class Solution:
    def maxProfit(self, prices: list[int]) -> int:
        i = 0
        lo = prices[0]
        hi = prices[0]
        n = len(prices)
        profit = 0
        
        # i is never reset or moved backward. It only increases.
        # Since i starts at 0 and only increases until n - 1, it never runs more than n - 1 steps
        while i < n - 1 :
            
            #look where to buy stock
            while i < n - 1 and prices[i] >= prices[i+1]:
                    i += 1
            lo = prices[i]
            
            #look where to sell stock
            #7 -> 1 -> 5 -> 2
            while i < n - 1 and prices[i] <= prices[i+1]:
                    i += 1
            hi = prices[i]
            profit = profit + (hi - lo)
        
        return profit
    
s = Solution()
print(s.maxProfit([7, 1, 5, 3, 6, 4]))