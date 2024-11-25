class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    int n = nums.length;

    // Step 1: Mark numbers as visited
    for (int i = 0; i < n; ++i) {
      int number = nums[i].abs(); // Get the actual number
      if (nums[number - 1] > 0) {
        nums[number - 1] = -nums[number - 1]; // Mark as visited
      }
    }

    // Step 2: Collect indices with positive values
    List<int> result = [];
    for (int i = 0; i < n; ++i) {
      if (nums[i] > 0) {
        result.add(i + 1); // Adjust to 1-based indexing for the result
      }
    }

    return result;
  }
}
