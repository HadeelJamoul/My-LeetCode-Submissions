class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> mapS = {};

    // Populate mapS with character frequencies from s
    for (int i = 0; i < s.length; ++i) {
      String charS = s[i];
      mapS[charS] = (mapS[charS] ?? 0) + 1;
    }

    // Adjust mapS based on character frequencies from t
    for (int i = 0; i < t.length; ++i) {
      String charT = t[i];
      if (!mapS.containsKey(charT) || mapS[charT] == 0) {
        return false; // More of charT in t than in s
      }
      mapS[charT] = mapS[charT]! - 1;
    }

    // Final check to confirm all frequencies are zero
    return mapS.values.every((count) => count == 0);
  }
}
