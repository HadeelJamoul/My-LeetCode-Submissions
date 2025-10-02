from typing import List, Optional

class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        result = []

        def dfs(node, path):
            if not node:
                return
            # extend current path
            path += str(node.val)
            
            # if leaf → add to result
            if not node.left and not node.right:
                result.append(path)
                return
            
            # otherwise, keep traversing with "->"
            dfs(node.left, path + "->")
            dfs(node.right, path + "->")

        dfs(root, "")
        return result