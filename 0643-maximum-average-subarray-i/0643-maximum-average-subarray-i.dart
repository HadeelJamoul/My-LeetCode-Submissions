class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int l = 0;
    double max_average = double.negativeInfinity;
    double sum = 0;
    int count = 0;

    for (int r = 0; r < nums.length; ++r) {
      // sum = 1
      // sum = 13
      // sum = 8
      // sum = 2

      // sum = 51
      sum += nums[r];
      // count = 1
      // count = 2
      // count = 3
      // count = 4

      // count = 4
      count++;

      while (count >= k) {
        // max_average = 2
        // max_average = 51
        max_average = max(max_average, sum);
        // count = 3
        count--;
        // sum = 1
        sum = sum - nums[l];
        // l = 1
        l += 1;
      }
    }
    return max_average / k;
  }
}