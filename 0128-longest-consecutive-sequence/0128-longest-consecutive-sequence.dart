class Solution {
  int longestConsecutive(List<int> nums) {
    Set<int> set = nums.toSet();
    int longest = 0;
    // enter the for loop if this num consider as the start of consecutive list
    for (int num in nums) {
      if (!set.contains(num - 1)) {
        int currentNum = num;
        int currentStreak = 1;

        while (set.contains(currentNum + 1)) {
          currentNum += 1;
          currentStreak += 1;
        }
        // we did that for such cases like [1,3,4,5,8]
        // because we might have multi consecutive lists
        longest = longest > currentStreak ? longest : currentStreak;
      }
    }
    return longest;
  }
}