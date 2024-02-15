# Medium - Smallest Multiple [Google Python Interview Question]

import math
def smallest_multiple(target):
  sm_mult = 1
  for i in range(1, target+1):
    sm_mult = abs(sm_mult * i) // math.gcd(sm_mult, i)
  return sm_mult
