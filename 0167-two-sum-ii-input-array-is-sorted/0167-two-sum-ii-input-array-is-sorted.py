class Solution:
    def twoSum(self, numbers: list[int], target: int) -> list[int]:
        left = 0
        right = len(numbers) - 1
        
        while(left <  right):
            if (numbers[right] + numbers[left] <  target):
                left += 1
            elif (numbers[right] + numbers[left] > target):
                right -=1
            else:
                return [left + 1, right + 1]