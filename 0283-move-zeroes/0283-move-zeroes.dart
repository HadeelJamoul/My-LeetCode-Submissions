class Solution {
  void moveZeroes(List<int> nums) {
    List<int> zeros = [];
    List<int> nonZeros = [];
    for (int i = 0; i < nums.length; ++i) {
      if (nums[i] == 0) zeros.add(0);
      if (nums[i] != 0) nonZeros.add(nums[i]);
    }
    nums.clear();
    nums.addAll(nonZeros);
    nums.addAll(zeros);
    print(nums);
  }
}