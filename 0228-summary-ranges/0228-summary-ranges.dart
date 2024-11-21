class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> ans = [];
    int i = 0;
    int start = 0;
    while (i < nums.length) {
      start = nums[i];
      while (i < nums.length - 1 && nums[i] + 1 == nums[i + 1]) {
        i += 1;
      }
      if (start != nums[i]) {
        ans.add(start.toString() + '->' + nums[i].toString());
      } else {
        ans.add(nums[i].toString());
      }
      i += 1;
    }
    return ans;
  }
}