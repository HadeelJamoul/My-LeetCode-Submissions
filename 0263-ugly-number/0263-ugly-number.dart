class Solution {
  bool isUgly(int n) {
    if (n <= 0) return false;
    while (n % 2 == 0) {
      n = n ~/ 2;
    }
    if (n == 1) return true;
    while (n % 3 == 0) {
      n = n ~/ 3;
    }
    if (n == 1) return true;
    while (n % 5 == 0) {
      n = n ~/ 5;
    }
    if (n == 1) return true;
    return false;
  }
}