// [1, 2, 3, 0, 0, 0]
//           m
// [2, 5, 6]  
//        n      
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var last: Int = m + n - 1
        var m: Int = m - 1
        var n: Int = n - 1

        while m >= 0 && n >= 0 {
            if nums1[m] > nums2[n] {
                nums1[last] = nums1[m]
                m -= 1
            } else {
                nums1[last] = nums2[n]
                n -= 1
            }
            last -= 1
        }

        while n >= 0 {
            nums1[last] = nums2[n]
            n -= 1
            last -= 1
        }
    }
}