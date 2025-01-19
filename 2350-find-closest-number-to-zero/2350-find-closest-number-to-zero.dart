class Solution {
  int findClosestNumber(List<int> nums) {
    int number =
        nums.map((element) => element.abs()).reduce((a, b) => a < b ? a : b);
    if (!nums.contains(number)) {
      return -number;
    }
    return number;
  }
}