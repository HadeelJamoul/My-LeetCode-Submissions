class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
     Set<int> nums1Set = nums1.toSet();
    List<int> res = [];
    for (int i = 0; i < nums2.length; i++) {
      if (nums1Set.contains(nums2[i])) {
        res.add(nums2[i]);
        nums1Set.remove(nums2[i]);
      }
    }
    return res;
  }
}