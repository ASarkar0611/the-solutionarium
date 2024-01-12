-- Contains Duplicate [Apple Python Interview Question]

def contains_duplicate(input)-> bool:
  freq_dict = {}
  for n in input:
    if n in freq_dict: freq_dict[n] = freq_dict[n] + 1
    else: freq_dict[n] = 1
  n = 0
  for i in freq_dict.values():
    if i > 1: n = i
  if n != 0:
    return True
  else: return False
