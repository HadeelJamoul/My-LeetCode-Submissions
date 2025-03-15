import bisect

class Solution:
    def searchInsert(self, nums: list[int], target: int) -> int:
        left = 0
        right = len(nums) - 1 
        
        if (target not in nums):
            bisect.insort(nums, target)
            return nums.index(target)
        while left <= right :
            mid = (right + left) // 2
            if nums[mid] == target:
                return mid
            elif nums[mid] > target :
                right = mid - 1
            elif nums[mid] < target :
                left = mid + 1
        
        return mid