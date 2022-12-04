from migen import *
from migen.fhdl import verilog

a = Signal(1)
b = Signal(1)

a | b

tmp = a | b
tmp

tmp.op

tmp.operands

x = Signal()
tmp = x.eq(a | b)
tmp

tmp.l

tmp.r

my_or = Module()
my_or.comb += x.eq((~a) | (~b))


print(verilog.convert(my_or, ios={a, b, x}))
