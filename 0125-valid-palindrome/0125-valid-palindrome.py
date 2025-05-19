import re

class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = re.sub(pattern= '[^a-zA-Z0-9]',repl='', string = s).lower()
        left = 0
        right = len(s) - 1
        while(left <= right):
            if s[left] != s[right]:
                return False
            else:
                left += 1
                right -= 1
        return True