class Solution {
  int thirdMax(List<int> nums) {
    List<int> uniqueNums = nums.toSet().toList();

    /// b.compareTo(a) caused the decreasing order
    uniqueNums.sort((a, b) => b.compareTo(a));
    print(uniqueNums);
    if (uniqueNums.length >= 3) {
      return uniqueNums[2];
    } else {
      return uniqueNums[0];
    }
  }
}