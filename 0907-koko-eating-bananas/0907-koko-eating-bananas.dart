class Solution {
  int minEatingSpeed(List<int> piles, int h) {
    bool k_works(int k) {
      int hours = 0;
      for (var p in piles) {
        hours += (p / k).ceil();
      }
      return hours <= h;
    }

    int l = 1;
    int r = piles.reduce((a, b) => a > b ? a : b);

    while (l < r) {
      int k = (l + r) ~/ 2;
      if (k_works(k)) {
        r = k;
      } else {
        l = k + 1;
      }
    }

    return l;
  }
}