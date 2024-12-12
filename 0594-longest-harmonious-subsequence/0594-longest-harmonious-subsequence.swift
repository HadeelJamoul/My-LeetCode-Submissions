// Print "Try programiz.pro" message

class Solution {
    func findLHS(_ nums: [Int]) -> Int {
      var maxLen = 0;
      var frequencyMap: [Int:Int] = [:]
      for number in nums{
          frequencyMap[number, default:0] += 1
      }
      for key in frequencyMap.keys{
          if let nextFreq = frequencyMap[key+1]{
              let currentLen = frequencyMap[key]! + nextFreq
              maxLen = max(maxLen, currentLen)
          }
      }
      print(frequencyMap)
    return maxLen
    }
}

// let here as final
// let solution =  Solution()
// print(solution.findLHS([1,3,2,2,5,2,3,7]))