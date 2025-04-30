class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:    
        dic = {}
        for i in range(len(nums)):
            dic[i] = nums[i]
        print(dic) 
        for key, value in dic.items():
            res = target - value
            for k,v in dic.items():
                if v == res and key != k:
                    return[key, k]

# print(Solution().twoSum([2,7,11,15], 9))