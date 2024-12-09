class Solution {
  int longestPalindrome(String s) {
    int count = 0;
    bool hasOdd = false;
    Map<String, int> frequencyMap = {};
    for (int i = 0; i < s.length; ++i) {
      frequencyMap[s[i]] = (frequencyMap[s[i]] ?? 0) + 1;
    }
    for (int freq in frequencyMap.values) {
      if (freq.isEven) {
        count += freq;
      }
      if (freq.isOdd) {
        count += freq - 1;
        hasOdd = true;
      }
    }
    if (hasOdd) {
      count = count + 1;
    }
    return count;
  }
}