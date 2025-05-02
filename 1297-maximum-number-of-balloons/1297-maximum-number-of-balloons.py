from collections import defaultdict

class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        # set a default value (0) even for the non existing keys
        freq = defaultdict(int)
        balloon = 'balloon'
        for char in text:
            if char in balloon:
                freq[char] += 1
            
        return min(freq['b'], freq['a'], freq['l'] // 2, freq['o'] // 2, freq['n'])