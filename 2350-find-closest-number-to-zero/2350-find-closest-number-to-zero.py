class Solution:
    def findClosestNumber(self, nums: list[int]) -> int:
        minimum = max(nums)
        for num in nums:
            absNum = abs(num)
            minimum = min(absNum, minimum)
        if(minimum not in nums):
            return -minimum
        return minimum