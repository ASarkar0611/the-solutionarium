# Medium - Factorial Trailing Zeroes [Microsoft Python Interview Question]

def trailing_zeroes(n):
  fact = 1
  for i in range(1,n+1): fact = fact * i
  newlist = [int(d) for d in str(fact)]
  count = 0
  for d in reversed(newlist):
    if d == 0: count += 1
    else: break
  return count
