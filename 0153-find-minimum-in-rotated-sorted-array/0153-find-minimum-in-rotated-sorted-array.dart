class Solution {
  int findMin(List<int> nums) {
    int left = 0;
    int right = nums.length - 1;

    while (left < right) {
      int mid = (right + left) ~/ 2;

      if (nums[mid] > nums[right]) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }

    return nums[left];
  }
}