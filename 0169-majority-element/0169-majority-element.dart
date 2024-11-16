class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> map = {};
    for (int i = 0; i < nums.length; ++i) {
      map[nums[i]] = (map[nums[i]] ?? 0) + 1;
    }
    //entries means all the key-value pairs example MapEntry(2: 4)
    //reduce determines the MapEntry with the hights value 
    //.key extract the key from that MapEntry
    //a and b represents two map entry 
    int keyOfMaxValue = map.entries.reduce((a, b) => a.value > b.value ? a : b).key;
    return keyOfMaxValue;
  }
}