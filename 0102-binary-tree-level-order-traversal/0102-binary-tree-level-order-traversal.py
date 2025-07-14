# Level order traversal means BFS
# here we use queue (FIFO)
# in DFS we use stack (Recursion)
from typing import Optional
from collections import deque

# Definition for a binary tree node.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def levelOrder(self, root: Optional[TreeNode]) -> list[list[int]]:
        
        if not root: return []
        
        queue = deque()
        queue.append(root)
        ans = []
        
        while queue:
            level = []
            n = len(queue)
            
            # here we complete each level
            for i in range(n):
                # print(f"the level: {n} \n")
                # pop left too distinguish between stack and queue
                node = queue.popleft()
                level.append(node.val)
                if node.left: queue.append(node.left)
                if node.right: queue.append(node.right)
            ans.append(level)

        return ans
    
# Build the tree nodes
# root = TreeNode(1)
# root.left = TreeNode(2)
# root.right = TreeNode(3)
# root.left.left = TreeNode(4)
# root.left.right = TreeNode(5)
# root.right.right = TreeNode(6)

# # Run level order traversal
# sol = Solution()
# result = sol.levelOrder(root)

# print(result)
