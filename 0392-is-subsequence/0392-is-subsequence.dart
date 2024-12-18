class Solution {
  bool isSubsequence(String s, String t) {
    int sIndex = 0;
    int tIndex = 0;

    //* tIndex now equal to sex break the while loop
    //* tIndex = 6, sIndex = 1
    while (tIndex < t.length && sIndex < s.length) {
      // s[0] => a, t[0] => a
      // s[1] => x, t[1] => h
      // s[1] => x, t[2] => b
      // s[1] => x, t[3] => g
      // s[1] => x, t[4] => d
      // s[1] => x, t[5] => c
      if (s[sIndex] == t[tIndex]) {
        // sIndex = 1
        sIndex++;
      }
      // tIndex = 1
      // tIndex = 2
      // tIndex = 3
      // tIndex = 4
      // tIndex = 5
      // tIndex = 5
      tIndex++;
    }
    // s.length => 3 != sIndex => 1
    return s.length == sIndex;
  }
}