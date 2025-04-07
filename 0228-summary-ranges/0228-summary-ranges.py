# Input: nums = [0,1,2,4,5,7]
# Output: ["0->2","4->5","7"]

class Solution:
    def summaryRanges(self, nums: list[int]) -> list[str]:
        result = []
        i = 0 
        # i = 0
        # --------------------------------------
        # i = 3
        # --------------------------------------
        # i = 5 
        # i = 5 < 6 ? yes
        # --------------------------------------
        # i = 6
        ### Do not enter the first while loop
        while(i < len(nums)):
            # start = 0
            # --------------------------------------
            # start = 4
            # start = 7
            start = nums[i]
            
            # i = 0
            # 1 == ? 1 yes
            
            # i = 1
            # 2 == ? 2 yes
            
            # i = 2
            # 3 ==? 4 No
            #### break while loop
            # --------------------------------------
            # i = 3
            # 5 ==? 5 yes
            # i = 4
            # 6 ==? 7 No
            #### break while loop
            
            # 5 < 5 ? NO 
            ### Do not enter the second while loop
            while(i < len(nums) - 1 and nums[i] + 1 == nums[i+1]):
                i += 1
            
            # i = 2
            # start = 0 , nums[2] = 2 ### 0 ==? 2 NO   
            # --------------------------------------
            # i = 4
            # start = 4, nums[4] = 5 ### 4 ==? 5 NO
            # --------------------------------------
            # i = 5
            # start = 7, nums[5] = 7 ### 7 ==? 7 YES
            if start != nums[i]:
                # result.append("0"->"2")
                # result.append("4"->"5")
                result.append(str(start) + "->" + str(nums[i]))
            else:
                # result.append("7")
                result.append(str(nums[i]))
            
            
            # i = 3
            # --------------------------------------
            # i = 5
            # --------------------------------------
            # i = 7 
            i += 1   
        return result