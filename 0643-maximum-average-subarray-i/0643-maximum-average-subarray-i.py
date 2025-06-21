class Solution:
    def findMaxAverage(self, nums: list[int], k: int) -> float:
        n = len(nums)
        cur_sum = 0        
        # this is simply build the initiate the window
        for i in range(k):
            cur_sum += nums[i]
        
        max_sum = cur_sum
        
        # after we calculate the init window 
        # we just have to move the start by one step => nums[i - k]
        # also the end by one step nums[i]
        for i in range(k, n):
            cur_sum = cur_sum + nums[i] - nums[i - k]
            max_sum = max(max_sum, cur_sum)
            
        return max_sum / k