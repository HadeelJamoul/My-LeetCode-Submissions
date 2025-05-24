class Solution:
    def evalRPN(self, tokens: list[str]) -> int:
        score = 0
        stk = []
        for token in tokens:
            if token == '+':
                a = stk.pop()
                b = stk.pop()
                stk.append(a + b)
            
            elif token == '*':
                a = stk.pop()
                b = stk.pop()
                stk.append(a * b)
            
            elif token == '-':
                a = stk.pop()
                b = stk.pop()
                stk.append(b - a)
            elif token == '/':
                a = stk.pop()
                b = stk.pop()
                stk.append(int(b / a))
            else:
                stk.append(int(token))
        
        score = stk.pop()
        return score