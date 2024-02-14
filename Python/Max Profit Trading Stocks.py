# Easy - Max Profit Trading Stocks [Google Python Interview Question]

def max_subarray_sum(prices):
	max_profit = 0
	for i in range(len(prices)):
	  for j in range(i+1, len(prices)):
	    max_profit = max(max_profit, prices[j]-prices[i])
	return max_profit
