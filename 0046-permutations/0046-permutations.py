from typing import List


class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        n = len(nums)
        res, sol = [], []

        def backtrack():
            #* we know we are at base case if we used up all numbers (1 and 2 and 3)

            # 0 we did not hit a base case
            # 1 we did not hit a base case
            # 2 we hit base case
            if len(sol) == n:
                # res = []
                # res = []
                # res = [[1,2]]
                res.append(sol[:])
                return
            
            #* other wise we are not in a base case and we want to loop over numbers 
            #* we iterate over the whole nums array each level, but only pick numbers not yet in sol

            # num = 1
            # num = 2
            for num in nums:
                #* we want to go down the bath of using the number only if num is not in sol
                #* this ensures each number is used at most once in the current permutation

                # 1 not in sol
                # 2 not in sol
                if num not in sol:
                    # sol = [1]
                    # sol = [1,2]
                    #* CHOOSE: place num at the next position of the permutation
                    sol.append(num)

                    #* to go all down
                    #? here we have to repeat but with 1 in our sol list
                    #? here we have to repeat but with 2 in our sol list
                    
                    # Level 0 choose 1 -> Level 1 choose 2 -> Level 2 choose 3 -> hit base -> pop 3 -> try other options -> ...
                    
                    backtrack()
                    #! in reality we pop() once per recursive level
                    sol.pop()
                    
        backtrack()
        #* After all recursion finishes, res contains every permutation.
        #* For nums = [1,2] -> res = [[1,2], [2,1]]
        #* For nums = [1,2,3] -> res has 3! = 6 permutations.
        return res

print(Solution().permute([1,2]))

