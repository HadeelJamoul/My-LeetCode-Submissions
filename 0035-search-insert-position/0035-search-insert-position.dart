class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums.contains(target)) return nums.indexOf(target);
    if (!nums.contains(target)) {
      nums.add(target);
    }
    nums.sort();
    return nums.indexOf(target);
  }
}