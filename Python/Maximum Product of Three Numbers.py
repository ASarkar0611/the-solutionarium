# Medium - Maximum Product of Three Numbers [D.E. Shaw Python Interview Question]

def max_three(input):
  ll = len(input)
  maxprod = 0
  for i in range(ll):
    if i == ll-2:
      prod = input[i]*input[i+1]*input[0]
    elif i == ll-1:
      prod = input[i]*input[0]*input[1]
    else:
      prod = input[i]*input[i+1]*input[i+2]
    maxprod = max(maxprod, prod)
  return maxprod
