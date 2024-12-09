class Solution {
  int firstUniqChar(String s) {
    Map<String, int> map = {};
    for (int i = 0; i < s.length; ++i) {
      map[s[i]] = (map[s[i]] ?? 0) + 1;
    }
    for (int i = 0; i < s.length; ++i) {
      if (map[s[i]] == 1) {
        return i;
      }
    }
    return -1;
  }
}