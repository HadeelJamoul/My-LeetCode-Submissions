class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        freq_ransom = {}
        freq_magaz = {}
        for char in ransomNote:
            if char in freq_ransom:
                freq_ransom[char] += 1
            else: 
                freq_ransom[char] = 1
        
        for char in magazine:
            if char in freq_magaz:
                freq_magaz[char] += 1
            else: 
                freq_magaz[char] = 1
        
        for char in ransomNote:
            if char not in magazine :
                return False
            if freq_magaz[char] < freq_ransom[char]:
                return False
        return True