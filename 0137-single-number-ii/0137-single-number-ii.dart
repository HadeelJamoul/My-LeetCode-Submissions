class Solution {
  int singleNumber(List<int> nums) {
    for (int i = 0; i < nums.length; ++i) {
      if (nums.lastIndexOf(nums[i]) == nums.indexOf(nums[i])) {
        print(nums[i]);
        return nums[i];
      }
    }
    return 0;
  }
}