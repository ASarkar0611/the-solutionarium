# Medium - Merge Conflicts [Microsoft Python Interview Question]

def has_merge_conflict(pull_requests)-> bool:
  ll = len(pull_requests)
  for i in pull_requests:
    #print(i)
    for j in range(ll):
      if pull_requests.index(i) != j:
        if (pull_requests[j][0] <= i[0] <=  pull_requests[j][1]) or \
           (pull_requests[j][0] <= i[1] <=  pull_requests[j][1]): return True
  return False
