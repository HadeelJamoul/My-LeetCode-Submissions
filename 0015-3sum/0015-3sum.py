# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]

class Solution:
    def threeSum(self, nums: list[int]) -> list[list[int]]:
        # [-4, -1, -1, 0, 1, 2]
        nums.sort()
        n = len(nums)
        answers = []
        for i in range(n):
            if nums[i] > 0:
                break
            if i > 0 and nums[i] == nums[i-1]:
                continue
            low = i + 1
            hig = n - 1
            while(low < hig):
                sum = nums[low] + nums[hig] + nums[i]
                if sum == 0:
                    answers.append([nums[low], nums[i], nums[hig]])
                    low += 1
                    hig -= 1
                    while low < hig and nums[low] == nums[low - 1]:
                        low += 1
                    while low < hig and nums[hig] == nums[hig + 1]:
                        hig -= 1
                elif sum < 0 :
                    low += 1
                elif sum > 0:
                    hig -= 1
            
        return answers

print(Solution().threeSum([-1,0,1,2,-1,-4]))