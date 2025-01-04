class Solution {
  int maxNumberOfBalloons(String text) {
    String balloon = 'balloon';
    Map<String, int> freq = {};
    // Create a frequency map of balloon letters from the text
    for (int i = 0; i < text.length; ++i) {
      if (balloon.contains(text[i])) {
        freq[text[i]] = (freq[text[i]] ?? 0) + 1;
      }
    }
    
    // If any of the balloon characters are missing, return 0
    if (!['b', 'a', 'l', 'o', 'n'].every((c) => freq.containsKey(c))) {
      return 0;
    }

    // Calculate the minimum number of "balloon" strings that can be formed
    return [
      freq['b'] ?? 0,
      freq['a'] ?? 0,
      (freq['l'] ?? 0) ~/ 2,
      (freq['o'] ?? 0) ~/ 2,
      freq['n'] ?? 0,
    ].reduce((a, b) => a < b ? a : b);
  }
}
