// squeeze technique pointers

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var copiedNums: [Int] = nums
        copiedNums.sort()
        let length: Int = copiedNums.count
        var answer :[[Int]] = []

        for i: Int in 0..<length{
            if(copiedNums[i] > 0){
                break
            }
            
            // Skip duplicates for the first number
            if i > 0 && copiedNums[i] == copiedNums[i - 1]{
                continue
            }

            var low: Int = i+1
            var high: Int = length - 1

            while low < high {
                let sum: Int = copiedNums[i] + copiedNums[low] + copiedNums[high]

                if sum == 0 {
                    answer.append([copiedNums[i], copiedNums[low], copiedNums[high]])
            
                    // Skip duplicates for the second number
                    while low < high && copiedNums[low] == copiedNums[low + 1]{
                        low += 1
                    }

                    // skip duplicated for the third number
                    while low < high && copiedNums[high] == copiedNums[high - 1]{
                        high -= 1
                    }

                    // move pointers 
                    low += 1
                    high -= 1
                }
                else if sum < 0{
                    low += 1
                }else{
                    high -= 1
                }
                }
            }
            return answer;
        }
    }
