# Definition for a binary tree node.
from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def getMinimumDifference(self, root: Optional[TreeNode]) -> int:
        min_distance = [float('infinity')]
        prev = [None]
        
        if not root: return None
        
        def dfs(node):
            if not node: return 
            
            dfs(node.left)
            
            if prev[0] is not None:
                distance = node.val - prev[0]
                min_distance[0] = min(min_distance[0], distance)
                
            prev[0] = node.val
            
            dfs(node.right)
        
        dfs(root)
        return min_distance[0]
    
