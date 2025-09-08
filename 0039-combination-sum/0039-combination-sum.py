from typing import List


class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        res, sol = [], []
        nums = candidates
        n = len(nums)
        
        def backtrack(i, curr_sum):
            if curr_sum == target:
                res.append(sol[:])
                return
            
            if curr_sum > target or i == n:
                return
            
            # here current sum is not going to change because we don't want to use that number
            backtrack(i+1, curr_sum)
            # going on path when we actually want to use it
            sol.append(nums[i])
            # we can use duplicate
            # here the same index but the sum changed
            backtrack(i, curr_sum+nums[i])
            # that will pop the same number that we decided to use it nums[i]
            sol.pop()
        
        backtrack(0, 0)
        return res