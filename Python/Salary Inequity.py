# Easy - Salary Inequity [Microsoft Python Interview Question]

def min_inequity(salaries, n):
	sorted_salaries = sorted(salaries)
	new_list = sorted_salaries[:n]
	min_ineq = max(new_list) - min(new_list)
	return min_ineq
