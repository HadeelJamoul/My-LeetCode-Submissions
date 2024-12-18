class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        // swift do not support direct indexing for string
        var sIndex: String.Index = s.startIndex
        var tIndex: String.Index = t.startIndex
        while sIndex < s.endIndex && tIndex < t.endIndex {
            if s[sIndex] == t[tIndex] {
                sIndex = s.index(after: sIndex)
            }
        tIndex = t.index(after: tIndex)
        }
        return sIndex == s.endIndex
    }
}