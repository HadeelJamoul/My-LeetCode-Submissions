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
  bool hasPathSum(TreeNode? root, int targetSum) {    
    bool has_sum(TreeNode? root, int currentSum) {
      if (root == null) {
        return false;
      }

      currentSum += root.val;

      // if we reach a leaf we want to check targetSum
      if (root.right == null && root.left == null) {
        return currentSum == targetSum;
      }

      return has_sum(root.left, currentSum) || has_sum(root.right, currentSum);
    }
  
    // the local variable currentSum initial value is 0
    return has_sum(root, 0);
  }
}