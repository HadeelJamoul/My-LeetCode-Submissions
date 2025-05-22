class Solution:
    def calPoints(self, operations: list[str]) -> int:
        stk = []
        score = 0
        for op in operations:
            if op == '+':
                stk.append(stk[-1]+ stk[-2])
            elif op == 'D':
                stk.append(stk[-1] * 2)
            elif op == 'C':
                stk.pop()
            else:
                stk.append(int(op))
        for s in stk:
            score += s
        return score