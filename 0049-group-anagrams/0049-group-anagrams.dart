import 'dart:collection';

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> anagramsMap = HashMap();

    for (String s in strs) {
      List<int> count = List.filled(26, 0);

      for (int i = 0; i < s.length; i++) {
        // we have the letter b
        // 98 - 97 = 1 
        // we initialized the count to be all zeros
        // count[1] = 0 => count[1]++ = 1
        count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      }

      // this is the key for the word eat
      // [1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]
      // "1#0#0#0#1#0#0#0#0#0#0#0#0#0#0#0#0#0#0#1#0#0#0#0#0#0"
      String key = count.join('#');

      anagramsMap.putIfAbsent(key, () => []);

      anagramsMap[key]!.add(s);
    }

    // the result:

    // {
    //   "1#0#0#0#1#0#0#0#0#0#0#0#0#0#0#0#0#0#0#1#0#0#0#0#0#0": ["eat", "tea", "ate"],
    //   "1#0#0#0#0#0#0#0#0#0#0#0#0#1#0#0#0#0#0#0#1#0#0#0#0#0": ["tan", "nat"],
    //   "1#1#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#1#0#0#0#0#0#0": ["bat"]
    // }

    List<List<String>> result = anagramsMap.values.toList();

    return result;
  }
}