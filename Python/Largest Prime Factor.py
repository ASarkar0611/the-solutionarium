# Medium - Largest Prime Factor [Facebook Python Interview Question]

def largest_prime_factor(target):
  fact_list = []
  
  # getting the factors
  for i in range(2, int(target/2)+1):
    if target%i == 0: fact_list.append(i)
    
  # checking if factors are prime or not
  maxprime = 0
  for i in fact_list:
    flag = 0
    for j in range(2, int(i**0.5) + 1):
      if i%j == 0:
        flag = 1
    if flag == 0:
      maxprime = max(maxprime, i)
  return maxprime
