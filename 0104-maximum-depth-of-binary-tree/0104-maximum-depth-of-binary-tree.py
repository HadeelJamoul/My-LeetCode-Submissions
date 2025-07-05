# Definition for a binary tree node.
from typing import Optional
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        if not root :
            return 0
        
        left = self.maxDepth(root.left)
        right = self.maxDepth(root.right)
        
        return 1 + max(left, right)
    
# [3,9,20,null,null,15,7]

# maxDepth(3)
# ├── maxDepth(9) → 1
# └── maxDepth(20)
#     ├── maxDepth(15) → 1
#     └── maxDepth(7) → 1
#          └── returns max(1, 1) + 1 → 2
# └── returns max(1, 2) + 1 → 3

print(Solution().maxDepth(TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))))
