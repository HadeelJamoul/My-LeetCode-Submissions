class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> freq = {};
    List<int> res = [];

    /// build frequency map for nums2
    for (int num in nums2) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    /// check each element in nums1
    for (int num in nums1) {
      if (freq.containsKey(num) && freq[num]! > 0) {
        res.add(num);
        freq[num] = freq[num]! - 1;
      }
    }
    return res;
  }
}