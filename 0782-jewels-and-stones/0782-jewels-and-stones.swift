class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var res:Int = 0
        var freq:[Character:Int] = [:]
        for stone in stones {
            freq[stone, default: 0] += 1
        }
        for jewel in jewels {
            if freq.keys.contains(jewel) {
                res = res + freq[jewel]!
            }
        }
        return res
    }
}