class Solution {
  int distributeCandies(List<int> candyType) {
    int maxCandyBars = candyType.length ~/ 2;
    int maxCandyTypes = candyType.toSet().length;
    if (maxCandyBars < maxCandyTypes) {
      return maxCandyBars;
    } else if (maxCandyBars > maxCandyTypes) {
      return maxCandyTypes;
    }
    return maxCandyBars;
  }
}