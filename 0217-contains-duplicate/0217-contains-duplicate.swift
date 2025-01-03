class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var freq: [Int : Int] = [:]
        for number in nums {
            freq[number] = freq[number, default: 0] + 1
        }
        for number in freq.values{
            if (number > 1){
                return true
            }
        }
        return false
    }
}