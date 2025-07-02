# Definition for a binary tree node.
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

# print tree
def print_pre_order(root):
    if root == None:
        return None
    
    print(root.val , end = " ")
    print_pre_order(root.left)
    print_pre_order(root.right)
    

# Time Complexity: o(n)
# space Complexity: must of the cases in tree search we are storing the nodes on the way down 
# So it is o(h) while h the hight of the tree

inverted = Solution().invertTree(TreeNode(2, TreeNode(1), TreeNode(3)))
print_pre_order(inverted)