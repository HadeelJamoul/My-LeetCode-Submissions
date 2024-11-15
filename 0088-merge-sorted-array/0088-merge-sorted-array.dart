class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    // Last index of nums1
    int last = m + n - 1; // last = 5

    // Merge in reverse order
    while (m > 0 && n > 0) {
      // nums1[2] = 3 > nums2[2] = 6 ? no // nums1[2] =3 > nums2[1] =5 ? no // nums1[2] = 3 > nums2[0] = 2 ? yes
      // nums1[1] > nums2[0] => 2 > 2 ? no
      if (nums1[m - 1] > nums2[n - 1]) {
        nums1[last] = nums1[m - 1]; // nums1[3] = nums1[2] => nums1[3] = 3
        m--; // m = 2
      } else {
        //nums1[5] = nums2[2] => nums1[5] = 6 //nums1[4] = nums2[1] =5 => nums2[4] = 5
        //nums1[3] = nums2[0] => nums1[3] = 2
        nums1[last] = nums2[n - 1];
        n--; // n = 2 // n = 1
      }
      last--; // last = 4 //last = 3
    }

    // Fill nums1 with leftover nums2 elements
    while (n > 0) {
      nums1[last] = nums2[n - 1];
      n--;
      last--;
    }
    print(nums1);
  }
}