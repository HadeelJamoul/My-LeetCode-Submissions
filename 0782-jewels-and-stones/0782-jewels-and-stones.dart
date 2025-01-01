// Jewels and Stones
class Solution {
  int numJewelsInStones(String jewels, String stones) {
    Map<String, int> freq = {};
    int res = 0;
    for (int i = 0; i < stones.length; ++i) {
      freq[stones[i]] = (freq[stones[i]] ?? 0) + 1;
    }
    for (int i = 0; i < jewels.length; ++i) {
      if (freq.keys.contains(jewels[i])) {
        res = res + freq[jewels[i]]!;
      }
    }
    // print(freq);
    return res;
  }
}