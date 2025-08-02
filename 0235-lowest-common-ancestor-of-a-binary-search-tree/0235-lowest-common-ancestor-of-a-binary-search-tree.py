
# Definition for a binary tree node.
# descendants -> أحفاد
# ancestor -> سلف
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        def lca_search(node):
            if not node:
                return None
            
            # If both are greater → go right
            if p.val > node.val and q.val > node.val:
                return lca_search(node.right)
            # If both are smaller → go left
            elif p.val < node.val and q.val < node.val:
                return lca_search(node.left)
            # Split point → this is the LCA
            else:
                return node
        
        return lca_search(root)


#Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
# print(Solution().lowestCommonAncestor())
        