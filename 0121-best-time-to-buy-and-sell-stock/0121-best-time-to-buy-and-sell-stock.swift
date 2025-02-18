class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var max_profit = 0;
        var min_price = Int.max;

        for price in prices {
            if (price < min_price){
                min_price = price
            }
            let profit: Int = price - min_price
            max_profit = max(max_profit, profit)
        }
        return max_profit;
    }
}