class MinStack:

    def __init__(self):
        self.stk = []
        self.min_stk = []

    def push(self, val: int) -> None:
        self.stk.append(val)
        if not self.min_stk:
            self.min_stk.append(val)
        elif self.min_stk[-1] < val :
            self.min_stk.append(self.min_stk[-1])
        else: 
            self.min_stk.append(val)

    def pop(self) -> None:
        self.stk.pop()
        self.min_stk.pop()
    
    # for the regular stack    
    def top(self) -> int:
        return self.stk[-1]
        
    # for the min stack
    def getMin(self) -> int:
        return self.min_stk[-1]

# Input
# ["MinStack","push","push","push","getMin","pop","top","getMin"]
# [[],[-2],[0],[-3],[],[],[],[]]

# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(-2)
# obj.push(0)
# obj.push(-3)
# print(obj.getMin())  # Expected output: -3
# obj.pop()
# print(obj.top())     # Expected output: 0
# print(obj.getMin())  # Expected output: -2
