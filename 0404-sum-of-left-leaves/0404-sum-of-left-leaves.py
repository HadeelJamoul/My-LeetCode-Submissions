class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        if not root:
            return 0
        
        def isLeaf(node):
            return node and not node.left and not node.right
        
        left_sum = 0
        if isLeaf(root.left):
            left_sum += root.left.val
        else:
            left_sum += self.sumOfLeftLeaves(root.left)
        
        left_sum += self.sumOfLeftLeaves(root.right)
        return left_sum