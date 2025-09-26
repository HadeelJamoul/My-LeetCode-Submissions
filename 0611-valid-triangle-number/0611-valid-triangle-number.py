from typing import List

#? [2,2,3,4]
class Solution:
    def triangleNumber(self, nums: List[int]) -> int:
        nums.sort()
        n = len(nums)
        count = 0
        
        #? it means by 1 the counting will stop before 1 => on index 2
        #? -1 means the counting step will decrease by 1 each time

        for k in range(n-1, 1, -1):
            i = 0
            j = k - 1
            
            # k = 3
            # i = 0
            # j = 2
            
            # k = 3
            # i = 0
            # j = 1
            
            # 1 < 1 ? NO
            
            # k = 2
            # j = 1
            # i = 0
            while i < j:
                # 2 + 3 > 4 FIRST
                
                # 2 + 2 > 4 ? NO
                
                # 2 + 2 > 3 SECOND
                
                if nums[i] + nums[j] > nums[k]:
                    # every thing between i and j valid and this is the THIRD
                    count += j - i
                    
                    # j = 1
                    
                    # /
                    
                    # j = 0
                    j -= 1
                # /
                # i = 1
                else:
                    i += 1

        return count