# Easy - Fizz Buzz Sum [Google Python Interview Question]

def fizz_buzz_sum(target):
  sum = 0
  for i in range(1,target):
    if i % 3 == 0 or i % 5 == 0:
      sum = sum + i
  return sum
  
