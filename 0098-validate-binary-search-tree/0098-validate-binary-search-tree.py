#Definition for a binary tree node.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
from typing import Optional


class Solution:
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        
        if not root : return True
        
        def is_valid(node, minn, maxx):
            
            if not node : return True
            
            if not (minn < node.val < maxx):
                return False
            
            return is_valid(node.left, minn, node.val) and is_valid(node.right, node.val, maxx)

        return is_valid(root, float('-inf'), float('inf'))

# print(Solution().isValidBST(TreeNode(2, TreeNode(1), TreeNode(3))))