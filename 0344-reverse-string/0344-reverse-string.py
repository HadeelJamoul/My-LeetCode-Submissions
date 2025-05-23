class Solution:
    def reverseString(self, s: list[str]) -> None:
        
        left = 0
        right = len(s) - 1
        while(left <= right):
            # Tuple Unpacking
            s[left], s[right] = s[right], s[left]
            left += 1
            right -= 1