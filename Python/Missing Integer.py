# Easy - Missing Integer [Amazon Python Interview Question]

def missing_int(input: list[int])-> int:
  list_len = len(input)
  for i in range(list_len+1):
    if i not in input: return i
