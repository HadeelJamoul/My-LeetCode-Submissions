class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var j = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i - 1] {
                nums[j] = nums[i]
                j += 1
            }
        }
        
        return j
    }
}

// let solution = Solution()
// var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4] 
// let length = solution.removeDuplicates(&nums)
// print("New length: \(length)")
// print("Modified array: \(Array(nums.prefix(length)))")
