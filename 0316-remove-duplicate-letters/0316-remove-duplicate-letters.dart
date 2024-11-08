class Solution {
  String removeDuplicateLetters(String s) {
    Map<String, int> map = {};

    for (int i = 0; i < s.length; ++i) {
      map[s[i]] = (map[s[i]] ?? 0) + 1;
    }

    List<String> stack = [];
    Set<String> seen = {};

    for (int i = 0; i < s.length; ++i) {
      map[s[i]] = map[s[i]]! - 1;
      if (seen.contains(s[i])) continue;
      while (stack.isNotEmpty &&
          stack.last.compareTo(s[i]) > 0 &&
          map[stack.last]! > 0) {
        seen.remove(stack.removeLast());
      }
      stack.add(s[i]);
      seen.add(s[i]);
    }
    return stack.join('');
  }
}