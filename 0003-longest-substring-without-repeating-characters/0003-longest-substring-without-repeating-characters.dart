import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    int l = 0;
    int max_window = 0;
    Set<String> set = {};
    for (int r = 0; r < s.length; ++r) {
      // s[0] = a
      // s[1] = b
      // s[2] = c
      // s[3] = a

      // true
      while (set.contains(s[r])) {
        // {a,b,c} => {b,c}
        set.remove(s[l]);
        // l = 1
        l += 1;
      }
      // length = 0 - 0 + 1 => length = 1
      // length = 2
      // length = 3
      // length = 3 - 1 + 1 = 3
      int length = r - l + 1;
      // max_window = (0,1) => max_window = 1
      // max_window = (1,2) => max_window = 2
      // max_window = 3
      // max_window = 3
      max_window = max(max_window, length);
      // set = {a}
      // set = {a,b}
      // set = {a,b,c}
      // set = {b,c,a} ... ext
      set.add(s[r]);
    }
    return max_window;
  }
}