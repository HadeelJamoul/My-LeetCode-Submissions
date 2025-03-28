class Solution {
  bool isPerfectSquare(int num) {
    int l = 0;
    int r = num;
    while (l <= r) {
      // mid = (0 + 16) / 2 = 8
      // mid = 7 / 2  = 3.5 => 3
      // mid = 7 + 4 /2 => 6
      // mid = 5 + 4 / 2 => 4
      int mid = (l + r) ~/ 2;
      // 64 > 16 => yes
      // 9 < 16
      // 36 > 16
      // 16
      if ((mid * mid) == num) {
        return true;
      }
      if ((mid * mid) > num) {
        // r = 7
        // r = 5
        r = mid - 1;
      } else {
        // l = 4
        l = mid + 1;
      }
    }

    return false;
  }
}