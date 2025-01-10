class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var mapS : [Character : Int] = [:]
        var mapT : [Character : Int] = [:]
        
        for var char: Character in s{
            mapS[char] = mapS[char, default: 0] + 1
        }

        for var char: Character in t{
            mapT[char] = mapT[char, default: 0] + 1
        }
        if(mapT == mapS){
          return true
        }
        // print(mapS)
        // print(mapT)
        return false
    }
}