class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0;
    for (int i = 0; i < nums.length; ++i) {
      // nums[0] => 3 continue
      // nums[1] => 2 != 3
      // nums[2] => 2 != 3
      // nums[3] => 3 continue
      if (nums[i] != val) {
        //nums[0] = nums[1]
        //nums[1] = nums[2]
        nums[k] = nums[i];
        //k = 1
        //k = 2
        k += 1;
      }
    }
    return k;
  }
}