class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var missing = 0
        var duplicate = 0
        var freqMap : [Int:Int] = [:]
        for number in nums {
          freqMap[number, default:0] += 1
        }
        // i< nums.length equals 1..<nums.count
        // i<= nums.length equals 1...nums.count
        for i in 1 ... nums.count{
            if freqMap[i] == nil{
                missing = i
            }
            else if freqMap[i] == 2{
                duplicate = i
            }
        }
        return [duplicate , missing]
    }
}