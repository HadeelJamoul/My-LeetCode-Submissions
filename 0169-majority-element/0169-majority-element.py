from collections import defaultdict

class Solution:
    def majorityElement(self, nums: list[int]) -> int:
        freq = defaultdict(int)
        for num in nums:
            freq[num] += 1
        max_value = 0
        for value in freq.values():
            max_value = max(value, max_value)
        for key in freq.keys():
            if freq[key] == max_value:
                return key