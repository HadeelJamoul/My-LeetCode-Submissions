class Solution {
  int firstUniqChar(String s) {
    Map<String, int> map = {};
    for (int i = 0; i < s.length; ++i) {
      map[s[i]] = (map[s[i]] ?? 0) + 1;
    }
    for (String char in s.split("")) {
      if (map[char] == 1) {
        return s.indexOf(char);
      }
    }
    return -1;
  }
}