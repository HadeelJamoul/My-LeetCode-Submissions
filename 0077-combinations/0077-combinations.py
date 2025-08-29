from typing import List


class Solution: 
    def combine(self, n: int, k: int) -> List[List[int]]:
        res, sol = [], []
        
        def backtrack(x):
            if len(sol) == k :
                res.append(sol[:])
                return
            
            left = x
            # len(sol) the numbers we picked
            still_need = k - len(sol)
            
            if left > still_need :
                # we skip this number we hit base case we don't need it
                backtrack(x - 1)
            
            sol.append(x)
            # here we consider the next number and walk all way to the end
            # after we went the full path of using it 
            backtrack(x - 1)
            # we need to undo what we did here
                
            # we take off the same number that we choose to use temporary
            sol.pop()
            
        
        backtrack(n)
        return res

print(Solution().combine(4, 2))