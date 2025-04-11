# 1 [1,2,3,4] 1
class Solution:
    def productExceptSelf(self, nums: list[int]) -> list[int]:
        n = len(nums)
        # this way we can go through the array once 
        # and in clover way we can build the left and right arrays at the same time
        l_mul = 1
        r_mul = 1
        # prefix
        l_arr = [0] * n
        r_arr = [0] * n
        
        for i in range(n):
            # forward is i, backward is j
            j = -i -1
            l_arr[i] = l_mul
            r_arr[j] = r_mul
            l_mul *= nums[i]
            r_mul *= nums[j]
            
        return [l*r for l, r in zip(l_arr, r_arr)]