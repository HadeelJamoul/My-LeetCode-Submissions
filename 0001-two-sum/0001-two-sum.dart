class Solution {
  List<int> twoSum(List<int> nums, int target) {
    //[2, 7, 11, 15] , target = 9
    Map<int, int> map = {};
    for (int i = 0; i < nums.length; ++i) {
      map[nums[i]] = i;
    }
    for (int i = 0; i < nums.length - 1; ++i) {
      int y = target - nums[i];
      if (map.keys.contains(y) && map[y] != i) {
        return [i, map[y]!];
      }
    }
    return [];
  }
}