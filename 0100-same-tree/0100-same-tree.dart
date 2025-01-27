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
  bool isSameTree(TreeNode? p, TreeNode? q) {

    bool balanced(TreeNode? p, TreeNode? q) {
      if (p == null && q == null) {
        return true;
      }
      if (p == null && q != null) {
        return false;
      }
      if (p != null && q == null) {
        return false;
      }

      if (p?.val != q?.val) {
        return false;
      }

      return balanced(p?.left, q?.left) && balanced(p?.right, q?.right);
    }

    return balanced(p, q);
  }
}