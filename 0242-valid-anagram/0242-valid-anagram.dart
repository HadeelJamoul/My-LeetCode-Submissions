class Solution {
bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }

  Map<String, int> countS = {};
  Map<String, int> countT = {};

  for (int i = 0; i < s.length; i++) {
    countS[s[i]] = (countS[s[i]] ?? 0) + 1;
    countT[t[i]] = (countT[t[i]] ?? 0) + 1;
  }

  for (String c in countS.keys) {
    if (countS[c] != countT[c]) {
      return false;
    }
  }

  return true;
}

}