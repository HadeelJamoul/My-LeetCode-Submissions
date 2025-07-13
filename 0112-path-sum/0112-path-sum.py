from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# in this approach we do not need to track the sum 
# ech time we march forward in the tree we sub the value 
class Solution:
    def hasPathSum(self, root: Optional[TreeNode], targetSum: int) -> bool:
        if not root : return False
        
        if not root.left and not root.right:
            return root.val == targetSum
        
        return self.hasPathSum(root.left, targetSum - root.val) or self.hasPathSum(root.right, targetSum - root.val)
    
# print(Solution().hasPathSum(TreeNode(1, TreeNode(2), TreeNode(3)), 3))