class Solution:
    def containsDuplicate(self, nums: list[int]) -> bool:
        freq = {}
        for num in nums:
            if num in freq:
                freq[num] += 1
            else:
                freq[num] = 1
        for value in freq.values():
            if value > 1:
                return True
        return False

print(Solution().containsDuplicate([1,2,3,1]))