class Solution {
  List<int> singleNumber(List<int> nums) {
    Map<int, int> numberMap = {};
    List<int> uniqueNumbers = [];
    for (int i = 0; i < nums.length; ++i) {
      /// if numberMap[nums[i]] already exist we add one to the value => numberMap[nums[i]] + 1
      /// if numberMap[nums[i]] not exist before we add one o zero => 0 + 1
      numberMap[nums[i]] = (numberMap[nums[i]] ?? 0) + 1;
    }
    /// This retrieves all the keys in the numberMap where this key value == 1
    uniqueNumbers = numberMap.keys.where((key) => numberMap[key] == 1).toList();
    return uniqueNumbers;
  }
}