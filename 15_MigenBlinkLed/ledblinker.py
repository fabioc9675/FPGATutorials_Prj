# importacion de librerias para verilog y migen
from migen import *
from migen.fhdl import verilog


class Blinker(Module):
    def __init__(self, led, maxperiod):

        counter = Signal(max=maxperiod+1)
        period = Signal(max=maxperiod+1)
        self.comb += period.eq(maxperiod)
        self.sync += If(counter == 0,
                        led.eq(~led),
                        counter.eq(period)
                        ).Else(
            counter.eq(counter - 1)
        )


led = Signal(8)
led.eq(int('0b10101010', 2))
my_blinker = Blinker(led, 6000000)

print(verilog.convert(my_blinker, ios={led}).write("my_design.v"))
