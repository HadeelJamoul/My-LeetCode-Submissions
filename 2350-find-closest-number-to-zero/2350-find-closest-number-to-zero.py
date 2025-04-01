class Solution:
    def findClosestNumber(self, nums: list[int]) -> int:
        closet = float('inf')
        for num in nums:
            absNum = abs(num)
            closet = min(absNum, closet)
        if(closet not in nums):
            return -closet
        return closet