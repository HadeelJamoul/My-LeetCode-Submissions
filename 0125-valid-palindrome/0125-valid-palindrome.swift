class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleaningString = s.lowercased().filter {$0.isNumber || $0.isLetter}
        let characters = Array(cleaningString)

        var left = 0
        var right = cleaningString.count - 1
        while left < right{
            if characters[left] != characters[right]{
                return false
            }
            left += 1
            right -= 1
        }
        return true;
    }
}