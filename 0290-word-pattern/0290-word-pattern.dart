/// Note, it's ok two keys maps to the same value
/// a -> cat
/// b -> cat
/// but it's NOT ok the same key maps to different values
/// cat -> a
/// cat -> b
class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> word = s.split(" ");

    if (pattern.length != word.length) return false;

    Map<String, String> charToWord = {};
    Map<String, String> wordToChar = {};

    for (int i = 0; i < pattern.length; ++i) {
      var c = pattern[i];
      var w = word[i];
      if (charToWord.containsKey(c) && charToWord[c] != w) return false;
      if (wordToChar.containsKey(w) && wordToChar[w] != c) return false;

      charToWord[c] = w;
      wordToChar[w] = c;
    }
    // print("charToWord $charToWord");
    // print("wordToChar $wordToChar");
    return true;
  }
}