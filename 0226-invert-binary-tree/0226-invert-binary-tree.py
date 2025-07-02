from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
        
        if root == None:
            return None
        
        # Depth First Search
        root.left, root.right = root.right, root.left
        
        #mRecursive
        self.invertTree(root.right)
        self.invertTree(root.left)

        return root