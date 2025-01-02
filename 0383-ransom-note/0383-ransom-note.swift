class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var freqNote: [Character : Int] = [:]
        var freqMaga: [Character : Int] = [:]
        for character in ransomNote {
            freqNote[character] = freqNote[character, default:0] + 1;
        } 
        for character in magazine {
            freqMaga[character] = freqMaga[character, default:0] + 1;
        } 
        for character in ransomNote {
            if let magazineCount = freqMaga[character], let noteCount = freqNote[character] {
                if magazineCount >= noteCount {
                    continue 
            } else {
                return false
            }
        } else {
            return false
        }
}
        return true
    }
}