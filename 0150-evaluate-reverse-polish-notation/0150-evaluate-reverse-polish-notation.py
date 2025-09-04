from typing import List


class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        ops = ['-', '+', '/', '*']
        nums = []
        for token in tokens:
            if token not in ops:
                nums.append(int(token))
            else:
                right = nums.pop()
                left = nums.pop()
                if token == '+':
                    nums.append(right + left)
                elif token == '*':
                    nums.append(right * left)
                elif token == '/':
                    nums.append(int(left / right))
                else:
                    nums.append(left - right)
        return nums[0]