# Medium - Two Sum [Amazon Python Interview Question]

def two_sum(input: list[int], target: int) -> list[int]:
	for i in range(len(input)):
	  for j in range(i+1,len(input)):
	    if input[i] + input[j] == target:
	      return [i, j]
	return [-1, -1]
