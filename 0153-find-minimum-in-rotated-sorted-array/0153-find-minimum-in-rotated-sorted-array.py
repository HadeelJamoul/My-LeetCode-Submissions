class Solution:
    def findMin(self, nums: list[int]) -> int:
        point1 = 0
        point2 = 1 
        for i in range(len(nums) - 1):
            if nums[point1] < nums[point2]:
                point1 += 1
                point2 += 1
            else:
                return nums[point2]
        return nums[0]