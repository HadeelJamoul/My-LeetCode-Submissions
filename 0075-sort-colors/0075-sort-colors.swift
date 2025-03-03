// [2,0,2,1,1,0]
// inout means modify the original value

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var counts: [Int] = [0, 0, 0]
        
        // count occurrences 
        for num in nums {
            counts[num] +=  1
        }
        
        // swift manual unpacking
        let(R, W, B) = (counts[0], counts[1], counts[2])
        print(R, W, B)
        
        // overwrite nums based on counts 
        nums = Array(repeating: 0, count: R) +
               Array(repeating: 1, count: W) +
               Array(repeating: 2, count: B)
    }
}

// var nums = [2, 0, 1]
// let solution = Solution()
// solution.sortColors(&nums)  // Pass using '&' because nums is inout
// print(nums)