class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var indexSum = Int.max // To keep track of the minimum index sum
        var result: [String] = [] // The final result list

        // Create a map from list1 for fast lookup of indices
        var map1: [String: Int] = [:]
        for (index, word) in list1.enumerated() {
            map1[word] = index
        }
        
        // Iterate over list2 and find common words
        for (index, word) in list2.enumerated() {
            if let index1 = map1[word] {
                let sum = index + index1
                if sum < indexSum {
                    // New minimum sum, reset the result
                    indexSum = sum
                    result = [word]
                } else if sum == indexSum {
                    // Same sum, add the word to the result
                    result.append(word)
                }
            }
        }
        
        return result
    }
}
