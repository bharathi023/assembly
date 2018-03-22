;program to print solutions for this quadratic equation

from z3 import *
x = Real('x')
s = Solver()
s.add(x*x - 2*x + 1==0)
s.check()
print s.model()
