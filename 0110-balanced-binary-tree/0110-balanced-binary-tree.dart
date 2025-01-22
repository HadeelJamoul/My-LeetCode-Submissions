/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool isBalanced(TreeNode? root) {
    bool balanced = true;

    int height(TreeNode? root) {
      if (root == null) {
        return 0;
      }

      int left_height = height(root.left);
      if (!balanced) return 0;

      int right_height = height(root.right);

      if ((left_height - right_height).abs() > 1) {
        balanced = false;
        return 0;
      }

      return 1 + max(left_height, right_height);
    }

    height(root);
    return balanced;
  }
}