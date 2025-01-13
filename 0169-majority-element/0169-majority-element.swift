class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var freq : [Int:Int] = [:]
        for number: Int in nums {
            freq[number] = freq[number ,  default: 0] + 1
        }
        // defines the comparison logic {$0.value < $1.value}
        // 0$ represents the first key-value pair => EX: (3, 2)
        // we want the key of the maximum value
        // it's safe to use ! because there is always a majority number
        let maxNumber: Int = freq.max {$0.value < $1.value}!.key

        return maxNumber;
    }
}