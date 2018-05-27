# Code to find maximum value of n for the ex 1.2-2
from math import log2

n = 2

while n <= 8*log2(n):
    n += 1

print(n)
