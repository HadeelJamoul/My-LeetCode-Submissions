# Definition for a binary tree node.

#It is a binary search tree -> that means always left child is smaller than the parent
#And left child is bigger
#We can do in-order traversal (left, root, right). 

from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def kthSmallest(self, root: Optional[TreeNode], k: int) -> int:
        # to force count to act as a global variable 
        # we make it like a list with one element
        
        count = [k]
        ans = [0]
        
        def in_order(node):
            if not node: return 
            
            in_order(node.left)
            
            if(count[0] == 1):
                ans[0] = node.val
            
            count[0] = count[0] - 1
            
            # if the count still bigger than zero we have to keep going 
            if(count[0] > 0):
                in_order(node.right)
        
        in_order(root)
        return ans[0]        
            