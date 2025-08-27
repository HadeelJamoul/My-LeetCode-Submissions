from typing import List

# in recursive backtracking 
# leaf node == solution == base case

class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        n = len(nums)
        res, sol = [], []
        
        def backtrack(index):
            # we know we have hit a solution 
            # when it is leaf node which means 
            if index == n:
                # sol[:] means copy of sol
                # if we just add sol that gives res reference to sol 
                # we don't want a reference you want basically a snapshot
                # in time what solution is actually storing
                
                #? the slicing notion means [:]
                #? take every thing from start to end and build a new list with the same elements
                res.append(sol[:])
                return
            
            # left bath => don't pick nums[index]
            # move on let's backtracking on the next index and see whats happen
            backtrack(index + 1)  
            
            # right bath => take the number we need 3 steps 
            sol.append(nums[index])
            backtrack(index + 1)
            # undo the decision
            sol.pop()

        backtrack(0)
        return res

print(Solution().subsets([1,2,3]))