class Solution {
  bool canJump(List<int> nums) {
    int goal = nums.length - 1;
    for (int i = goal; i >= 0; --i) {
      if (i + nums[i] >= goal) {
        goal = i;
      }
    }
    if (goal == 0) {
      return true;
    }
    return false;
  }
}