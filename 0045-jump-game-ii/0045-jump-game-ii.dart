// Divieds the problem into segments/ranges [l,r]
// within each range, it calculates the farthest postion that can be reached
// each segments represents one jump
// the number of segments is the minimum number of jumps
// this greedy approach ensures you always take the minimum jumps to rech the last index

class Solution {
  int jump(List<int> nums) {
    int res = 0;
    int l = 0;
    int r = 0;

    // r = right most value of our current portion
    // applying DFS on every portion

    // r = 0
    // r = 2
    // r = 4

    // STOP r = 4
    while (r < nums.length - 1) {
      int farthest = 0;
      for (int i = l; i < r + 1; ++i) {
        // i = 0 , nums[0] = 2
        // farthest = max(0, 2) => farthest = 2

        // i = 1 , nums[1] = 3
        // farthest = max(2, 4) => farthest = 4

        farthest = max(farthest, i + nums[i]);
      }
      // res = 1
      // res = 2
      res += 1;
      // l = 1
      // l = 3
      l = r + 1;
      // r = 2
      // r = 4
      r = farthest;
    }
    return res;
  }
}