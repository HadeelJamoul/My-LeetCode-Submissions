class Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (nums[mid] < target) {
        left = mid + 1;
      } else if (nums[mid] > target) {
        right = mid - 1;
      } else {
        return mid; // Target found at index mid
      }
    }
    
    // If target is not found, left is the insertion position
    return left;
  }
}
