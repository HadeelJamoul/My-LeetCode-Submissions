class Solution {
  int maxProfit(List<int> prices) {
    int left = 0;
    int right = 1;
    int maxSum = 0;
    while (right < prices.length) {
      if (prices[left] < prices[right]) {
        maxSum += prices[right] - prices[left];
      }
      left = left + 1;
      right = right + 1;
    }
    return maxSum;
  }
}