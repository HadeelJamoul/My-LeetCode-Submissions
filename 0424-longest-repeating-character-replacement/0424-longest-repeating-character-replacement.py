from collections import defaultdict

class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        l = 0
        max_count = 0 
        count = defaultdict(int)
        n = len(s)
        result = 0
        for r in range(n):
            count[s[r]] += 1
            max_count = max(max_count, count[s[r]])
            
            # if the difference between window length and
            # the max count of the current window 
            # is greater than k (thats means we need to shift the window)
            if (r - l + 1) - max_count > k :
                count[s[l]] -= 1
                l += 1
            
            result = max(result, r- l + 1)
        return result