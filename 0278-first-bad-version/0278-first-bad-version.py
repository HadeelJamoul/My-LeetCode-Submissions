# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

class Solution:
    def firstBadVersion(self, n: int) -> int:
        l = 1
        r = n
        # Each iteration shrinks the range (l, r) until they meet.
        while l < r :
            mid = (l + r) // 2
            if(isBadVersion(mid)):
                r = mid
            else:
                l = mid + 1
        
        # Since l and r have converged
        return l