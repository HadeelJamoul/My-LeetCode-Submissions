class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        freq_s = {}
        freq_t = {}
        if (len(s) != len(t)):
            return False
        for char in s:
            if char in freq_s:
                freq_s[char] += 1
            else:
                freq_s[char] = 1
        
        for char in t:
            if char in freq_t:
                freq_t[char] += 1
            else:
                freq_t[char] = 1
                
        for char in freq_s:
            if char not in freq_t:
                return False
            if char in freq_t and freq_s[char] != freq_t[char]:
                return False
            
        return True