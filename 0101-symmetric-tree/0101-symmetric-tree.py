# Definition for a binary tree node.
from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if not root: return True
        def isMirror (t1: TreeNode, t2: TreeNode) -> bool:
            if not t1 and not t2:
                return True
            if not t1 or not t2:
                return False
            return(
                t1.val == t2.val 
                and isMirror(t1.left, t2.right) 
                and isMirror(t1.right, t2.left)
            )
        return isMirror(root.left, root.right)

# print(Solution().isSymmetric(TreeNode(
#     1,
#     TreeNode(
#         2,
#         TreeNode(3),
#         TreeNode(4)
#     ),
#     TreeNode(
#         2,
#         TreeNode(4),
#         TreeNode(3)
#     )
# )
# ))