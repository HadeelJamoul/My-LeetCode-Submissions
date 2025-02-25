class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index: Int = 0
        for num in nums {
            if num != val {
                // we overwrite nums array each value not equal to val we put in the array
                nums[index] = num
                index += 1
            }
        }
        return index
    }
}