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
  int diameterOfBinaryTree(TreeNode? root) {
    int largest_diameter = 0;
    int height(TreeNode? root) {
      if (root == null) return 0;

      int right_height = height(root.right);
      int left_height = height(root.left);

      int diameter = right_height + left_height;

      largest_diameter = max(largest_diameter, diameter);

      return 1 + max(right_height, left_height);
    }

    height(root);

    return largest_diameter;
  }
}