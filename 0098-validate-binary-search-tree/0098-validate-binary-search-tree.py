# Definition for a binary tree node.
from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        
        def isValid(node: Optional[TreeNode], low: float, high: float) :
            if not node: return True
            if not (low < node.val < high) : return False
            return (
                isValid(node.left, low, node.val)
                and
                isValid(node.right, node.val, high)
            )
            
        return isValid(root, float('-inf'), float('inf'))

print(Solution().isValidBST(TreeNode(2, TreeNode(1), TreeNode(3))))