class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> squareNums = [];
    List<int> result = [];
    int left = 0;
    int right = nums.length - 1;
    for (int i = 0; i < nums.length; ++i) {
      squareNums.add(nums[i] * nums[i]);
    }
    while (left <= right) {
      if (squareNums[right] > squareNums[left]) {
        result.add(squareNums[right]);
        right -= 1;
      } else {
        result.add(squareNums[left]);
        left += 1;
      }
    }


    return result.reversed.toList();
  }
}