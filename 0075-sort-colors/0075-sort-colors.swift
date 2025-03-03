// [2,0,2,1,1,0]
// inout means modify the original value

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0
        var mid = 0
        var high = nums.count - 1
        
        while (mid <= high) {
            if nums[mid] == 0 {
              nums.swapAt(low,mid)
              low += 1
              mid += 1
            } else if (nums[mid] == 1){
              mid += 1
            } else {
              nums.swapAt(mid, high)
              high -= 1
            }
        }
    }
}

var nums = [2, 0, 1]
let solution = Solution()
solution.sortColors(&nums)  // Pass using '&' because nums is inout
print(nums)