from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        max_road = 0
        
        def get_hight(node: Optional[TreeNode]) -> int:
            nonlocal max_road  # <-- This is the key fix
            if not node:
                return 0

            left_hight = get_hight(node.left)
            right_hight = get_hight(node.right)
            
            # update the max diameter
            max_road = max(max_road, left_hight + right_hight)
            
            return 1 + max(left_hight, right_hight)
        
        get_hight(root)
        return max_road

        