class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        
        
        minprice = prices[0]
        maxprofit = 0 
        currprice = 0
        
        for i in range(len(prices)-1):
            
            minprice = prices[i]
            currprice = prices[i+1]
            if currprice < minprice:
                continue
            else:
                maxprofit = maxprofit + (currprice - minprice)
            
        
        return maxprofit