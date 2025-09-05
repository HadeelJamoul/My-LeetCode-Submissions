class Solution:
    def isValid(self, s: str) -> bool:
        close = '}])'
        _open = '{(['
        stack = []
        for char in s:
            if char in _open:
                stack.append(char)
            elif char in close:
                if not stack:
                    return False
                # python peek is stack[-1]
                last = stack[-1]
                if (char == '}' and last == '{') or (char == ')' and last == '(') or (char == ']' and last == '['):
                    stack.pop()
                else:
                    return False
            else:
                return False
        return len(stack) == 0