import heapq
class Solution:
    def findKthLargest(self, nums: list[int], k: int) -> int:
        for i in range(len(nums)):
            nums[i] = -nums[i]
        heapq.heapify(nums)
        
        while(k > 1):
            k -= 1
            heapq.heappop(nums)
        # print(nums)
        
        return - heapq.heappop(nums)