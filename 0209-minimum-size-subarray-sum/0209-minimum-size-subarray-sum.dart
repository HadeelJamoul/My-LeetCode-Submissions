class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int l = 0;
    int sum = 0;
    int min_length = nums.length + 1;
    for (int r = 0; r < nums.length; ++r) {
      sum += nums[r];

      while (sum >= target) {
        min_length = min(min_length, (r - l + 1));
        sum -= nums[l];
        l += 1;
      }
    }

    return min_length == nums.length + 1 ? 0 : min_length;
  }
}