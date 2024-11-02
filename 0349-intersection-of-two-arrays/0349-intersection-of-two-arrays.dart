class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    nums1.toSet();
    nums2.toSet();
    List<int> res = [];
    for (int i = 0; i < nums1.length; ++i) {
      if (nums2.contains(nums1[i])) {
        res.add(nums1[i]);
      }
    }
    for (int i = 0; i < nums2.length; ++i) {
      if (nums1.contains(nums2[i])) {
        res.add(nums2[i]);
      }
    }
    print(res.toSet().toList());
    return res.toSet().toList();
  }
}