class Solution {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        for i in 0..<32{
            let bit = (n >> i) & 1
            result = result | (bit << (31 - i))
        }
        return result
    }
}