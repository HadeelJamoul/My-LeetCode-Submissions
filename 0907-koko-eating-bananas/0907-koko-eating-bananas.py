import math

class Solution:
    def minEatingSpeed(self, piles: list[int], h: int) -> int:
        def mid_works(mid):
            hours = 0
            for p in piles:
                hours += math.ceil(p / mid)
            return hours <= h
        
        l = 1
        r = max(piles)
        
        while l < r:
            mid = (l + r) // 2
            if mid_works(mid):
                r = mid
            else:
                l = mid + 1
        
        return l