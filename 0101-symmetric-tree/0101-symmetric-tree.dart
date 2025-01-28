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
  bool isSymmetric(TreeNode? root) {
    bool same(TreeNode? root1, TreeNode? root2) {
      if (root1 == null && root2 == null) {
        return true;
      }
      if (root1 == null || root2 == null) {
        return false;
      }

      if (root1.val != root2.val) {
        return false;
      }

      return same(root1.left, root2.right) && same(root1.right, root2.left);
    }

    return same(root, root);
  }
}