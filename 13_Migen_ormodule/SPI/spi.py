#!/usr/bin/env python3

# This file is Copyright (c) 2019-2020 Manuel Arroyave <matheos.mc2@gmail.com>
# License: BSD

import argparse

from common.platforms import nexys_video
from common.platforms import daphne
from migen import *
from migen.genlib.cdc import MultiReg

from litex.soc.interconnect.csr import *

# SPI Slave ----------------------------------------------------------------------------------------

class SPISlave(Module):
    """4-wire SPI Slave

    Provides a simple and minimal hardware SPI Slave with CPOL=0, CPHA=0 and build time configurable
    data_width.
    """
    def __init__(self, stm, data_width):
        #if stm is None:
        #    stm = Record(self.stm_layout)
        #if not hasattr(stm, "cs_n"):
        #    stm.cs_n = Signal()
        self.stm       = stm
        self.data_width = data_width


        self.start    = Signal()            # o, Signal a start of SPI Xfer.
        self.length   = Signal(13)        # o, Signal the length of the SPI Xfer (in bits).
        self.done     = Signal()            # o, Signal that SPI Xfer is done/inactive.
        self.irq      = Signal()            # o, Signal the end of a SPI Xfer.
        self.mosi     = Signal(data_width)  # i, Data to send on SPI MOSI.
        self.miso     = Signal(data_width,reset=0b01100001)  # o, Data received on SPI MISO.
        self.loopback = Signal()            # i, Loopback enable.

        # # #

        clk  = Signal()
        cs   = Signal()
        mosi = Signal()
        miso = Signal()

        # IOs <--> Internal (input resynchronization) ----------------------------------------------
        self.specials += [
            MultiReg(stm.clk,    clk),
            MultiReg(~stm.cs_n,   cs),
            MultiReg(stm.mosi,  mosi),
        ]
        self.comb += stm.miso.eq(miso)

        # Clock detection --------------------------------------------------------------------------
        clk_d    = Signal()
        clk_rise = Signal()
        clk_fall = Signal()
        self.sync += clk_d.eq(clk)
        self.comb += clk_rise.eq(clk & ~clk_d)
        self.comb += clk_fall.eq(~clk & clk_d)

        # Control FSM ------------------------------------------------------------------------------
        self.submodules.fsm = fsm = FSM(reset_state="IDLE")
        fsm.act("IDLE",
            If(cs,
                self.start.eq(1),
                NextValue(self.length, 0),
                NextState("XFER")
            ).Else(
                self.done.eq(1)
            )
        )
        fsm.act("XFER",
            If(~cs,
                self.irq.eq(1),
                NextState("IDLE")
            ),
            NextValue(self.length, self.length + clk_rise)
        )

        # Master In Slave Out (MISO) generation (generated on spi_clk falling edge) ----------------
        miso_data = Signal(data_width)
        counter=Signal(3)
        self.sync += [
            If(self.start,
                counter.eq(7),
                miso_data.eq(self.miso),
            ).Elif(cs & clk_fall,
                miso_data.eq(Cat(Signal(), miso_data[:-1])),
                counter.eq(counter-1),
            )
        ]
        self.sync += If((cs&clk_rise&(counter==0b000)),self.miso.eq(self.miso+1))
        self.sync += If((cs&clk_fall&(counter==0b000)),miso_data.eq(self.miso))
        self.comb +=  miso.eq(miso_data[-1]),
       
        # Master Out Slave In (MOSI) capture (captured on spi_clk rising edge) ---------------------
        self.sync += [
            If(cs & clk_rise,
                self.mosi.eq(Cat(mosi, self.mosi[:-1]))
            )
        ]

# AFE Gateware Launcher
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--board", required=True, help="FPGA board")
    parser.add_argument("--build", action="store_true", help="Build bitstream")
    parser.add_argument("--load", action="store_true", help="Load bitstream (to SRAM)")
    

    args = parser.parse_args()

    
    if args.board == "nexys_video":
        platform    = nexys_video.Platform()



    if args.board == "daphne":
        platform    = daphne.Platform()


    
    project     = "SPI_slave"


    dut = SPISlave( 
        stm         = platform.request("stm"),
        #mclk        = platform.request("clk100"),
        data_width  = 8,
        )
    
    build_dir="build/"+args.board+"/"+project+"/"
    if args.build:
        platform.build(dut,build_dir=build_dir)
    
    if args.load:
        platform.load(build_dir=build_dir)

if __name__ == "__main__":
    main()
