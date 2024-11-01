class Solution {
  void rotate(List<int> nums, int k) {
    k = k % nums.length;
    if (k <= 0) return;
    List<int> num1 = nums.sublist(0, nums.length - k);
    List<int> num2 = nums.sublist(nums.length - k);
    nums.clear();
    for (int i = 0; i < num2.length; ++i) {
      nums.add(num2[i]);
    }
    for (int i = 0; i < num1.length; ++i) {
      nums.add(num1[i]);
    }
    print(nums);
  }
}