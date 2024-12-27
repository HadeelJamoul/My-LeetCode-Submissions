class Solution {
    func jump(_ nums: [Int]) -> Int {
        var l: Int = 0
        var r: Int = 0
        var res: Int = 0
        while r < nums.count - 1 {
            var farthest: Int = 0;
            // we rech exactly to r that is why we did not use r+1
            for i in l...r{
                farthest = max(farthest, i + nums[i])
            }
            res += 1
            l = r + 1
            r = farthest
        }
        return res
    }
}