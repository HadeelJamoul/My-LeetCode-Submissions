from typing import List
from functools import lru_cache


class Solution:
    def minimumTotal(self, triangle: List[List[int]]) -> int:
        n = len(triangle)
        
        if not triangle: return 0
        
        @lru_cache(None)
        def f(r: int, c:int) -> int:
            # if we are at the bottom
            if r == n -1:
                # if we have only one row we will take the first element because this is where the path start 
                # even if we [[4,1,8,3]] the answer will be 4
                # and this is the recursion base case
                return triangle[r][c]
            # we take the current cell + the min of the current cell adjacent(from the next row) 
            return triangle[r][c] + min(f(r+1, c), f(r+1, c+1))
        
        return f(0, 0)


# Solution().minimumTotal([[-1],[2,3],[1,-1,-3]])