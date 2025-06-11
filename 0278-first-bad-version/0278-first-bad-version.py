# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

class Solution:
    def firstBadVersion(self, n: int) -> int:
        left = 1
        right = n
        # left = 4 and right = 4
        # so we break the loop 
        # we can return right or left because when we execute the loop they definitely 
        # will be the same
        while(left < right):
            # (1 + 5) // 2 = 3
            # (4 + 5) // 2 = 4
            mid = (left + right) // 2
            # 3 is false
            # 4 is false
            if(isBadVersion(mid)):
                # right = 4
                right = mid
            else:
                # left = 3 + 1
                left = mid + 1
        return left