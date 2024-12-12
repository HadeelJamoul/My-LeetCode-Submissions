class Solution {
  int findLHS(List<int> nums) {
    Map<int, int> map = {};
    int maxLen = 0;

    for (int i = 0; i < nums.length; ++i) {
      map[nums[i]] = (map[nums[i]] ?? 0) + 1;
    }
    for (int key in map.keys) {
      if (map.containsKey(key + 1)) {
        int currentLen = map[key]! + map[key + 1]!;
        maxLen = currentLen > maxLen ? currentLen : maxLen;
      }
    }
    return maxLen;
  }
}