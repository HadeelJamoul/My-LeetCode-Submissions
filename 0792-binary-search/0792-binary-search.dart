class Solution {
  int search(List<int> nums, int target) {
    int n = nums.length;
    int left = 0;
    int right = n - 1;

    while (left <= right) {
      int mid = (right + left) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }
    return -1;
  }
}