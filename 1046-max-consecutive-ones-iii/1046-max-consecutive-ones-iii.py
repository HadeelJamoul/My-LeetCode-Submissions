# sliding window algorithm with variable length
# two different indices going through the array 
# they are both always going forward
# and never going backwards thats why we have two nestead loops and the complexity still
# o(n)

class Solution:
    def longestOnes(self, nums: list[int], k: int) -> int:
        l = 0
        n = len(nums)
        num_zeros = 0
        max_ones = 0
        
        for r in range(n):
            if nums[r] == 0:
                num_zeros += 1
            
            # we just incremented the number of zeros
            # so our window might be invalid
            while num_zeros > k :
                if nums[l] == 0:
                    num_zeros -= 1
                l += 1
            
            # at the end of this loop our window is valid
            # and we can calculate
            # How many elements are between index l and index r, inclusive?
            current_ones = r - l + 1
            max_ones = max(max_ones, current_ones)
            
        return max_ones