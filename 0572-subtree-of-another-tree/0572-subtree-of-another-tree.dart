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
  bool isSubtree(TreeNode? root, TreeNode? subRoot) {
    bool sameTree(TreeNode? p, TreeNode? q) {
      if (p == null && q == null) {
        return true;
      }
      if ((p != null && q == null) || (p == null && q != null)) {
        return false;
      }

      if (p?.val != q?.val) {
        return false;
      }

      return sameTree(p?.left, q?.left) && sameTree(p?.right, q?.right);
    }

    bool has_subTree(root) {
      if (root == null) {
        return false;
      }
      if (sameTree(root, subRoot)) {
        return true;
      }
      return has_subTree(root.left) || has_subTree(root.right);
    }

    return has_subTree(root);
  }
}