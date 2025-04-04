class Solution:
    def maxProfit(self, prices: list[int]) -> int:
        if(len(prices) <= 1):
            return 0
        
        min_price = prices[0]
        max_profit = 0
        for price in prices[1:]:
            profit = price - min_price
            max_profit = max(max_profit, profit)
            min_price = min(min_price, price)
        return max_profit 