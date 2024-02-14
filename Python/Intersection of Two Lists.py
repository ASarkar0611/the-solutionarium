# Easy - Intersection of Two Lists [Amazon Python Interview Question]

def intersection(a, b):
  common_ele = []
  for i in a:
    if i in b: common_ele.append(i)
  return common_ele
