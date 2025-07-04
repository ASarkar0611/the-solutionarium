class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        
        if len(prices) <= 1: return 0
        
        minprice = prices[0]
        maxprofit = 0
        profit = 0
        
        for i in range(1, len(prices)):
            
            currentprice = prices[i]
            if currentprice < minprice:
                minprice = currentprice
            else:
                profit = currentprice - minprice
                if profit > maxprofit: maxprofit = profit
        
        return maxprofit