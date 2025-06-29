class Solution:
    def minSubArrayLen(self, target: int, nums: list[int]) -> int:
        l = 0
        sum = 0
        min_length = float('inf')
        n = len(nums)
        
        for r in range(n):
            sum += nums[r]
            
            while sum >= target:
                min_length = min(min_length, r-l+1)
                sum = sum - nums[l]
                l += 1
        
        return 0 if min_length == float('inf') else min_length

print(Solution().minSubArrayLen(7,[2,3,1,2,4,3]))