class Solution {
  int characterReplacement(String s, int k) {
    int l = 0;
    int max_window = 0;
    List<int> counts = List.filled(26, 0);

    for (int r = 0; r < s.length; ++r) {
      // compute the frequency of the s[r] char what ever it was
      counts[s.codeUnitAt(r) - 65]++;
      // the repeating chars smaller than k (the number of allowed changes)
      // so that means this window is inValid
      int max_count = counts.reduce((a, b) => a > b ? a : b);

      if (((r - l + 1) - max_count) > k) {
        // we removed the left char
        counts[s.codeUnitAt(l) - 65]--;
        l += 1;
      }

      max_window = max(max_window, (r - l + 1));
    }
    return max_window;
  }
}