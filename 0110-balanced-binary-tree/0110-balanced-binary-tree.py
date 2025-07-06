from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def isBalanced(self, root: Optional[TreeNode]) -> bool:
        # we used list with one element because python doesn't allow reassigning
        # a variable from an inner function unless you use nonlocal (global) 
        # but lists are mutable so we can change their contents inside the nested function
        balanced = [True]
        def height(root) -> int:
            if not root:
                return 0
            
            left_height = height(root.left)
            right_height = height(root.right)
            
            if abs(left_height - right_height) > 1:
                balanced[0] = False
                return 0
            
            return 1 + max(left_height, right_height)
        
        height(root)
        return balanced[0]

# print(Solution().isBalanced(TreeNode(
#     3,
#     TreeNode(9),
#     TreeNode(20, TreeNode(15), TreeNode(7))
# )))