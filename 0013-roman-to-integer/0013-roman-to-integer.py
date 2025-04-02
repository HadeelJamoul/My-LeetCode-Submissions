class Solution:
    def romanToInt(self, s: str) -> int:
        sum = 0
        i = 0

        singleSymbol = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }
        
        pairSymbol = {
            'IV': 4,
            'IX': 9,
            'XL': 40,
            'XC': 90,
            'CD': 400,
            'CM': 900,
        }
        
        while(i < len(s)):
            if s[i:i+2] in pairSymbol:
                sum = sum + pairSymbol[s[i:i+2]]
                i += 2
            else:
                sum = sum + singleSymbol[s[i]]
                i += 1
        return sum