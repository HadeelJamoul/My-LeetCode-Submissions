class Solution {
  int longestOnes(List<int> nums, int k) {
    int l = 0;
    int num_zeros = 0;
    int max_window = 0;
    for (int r = 0; r < nums.length; ++r) {
      if (nums[r] == 0) {
        num_zeros += 1;

        // here we going to do the sliding thing
        while (num_zeros > k) {
          if (nums[l] == 0) {
            num_zeros -= 1;
          }
          l += 1;
        }
      }
      
      // update the maximum window length
      int window_length = r - l + 1;
      max_window = max(max_window, window_length);
    }
    return max_window;
  }
}