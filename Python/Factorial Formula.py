# Easy - Factorial Formula [Microsoft Python Interview Question]

def factorial(n):
  fact = 1
  for i in range(1,n+1):
    fact = fact * i
  if n > 0: return fact
  else: return 1
