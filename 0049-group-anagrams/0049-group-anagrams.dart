import 'dart:collection';

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    // Create a HashMap to store the anagrams.
    Map<String, List<String>> anagramsMap = HashMap();

    for (String s in strs) {
      // Initialize a count array to count the occurrences of each character.
      List<int> count = List.filled(26, 0);

      // Count the frequency of each character in the string.
      for (int i = 0; i < s.length; i++) {
        count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      }

      // Convert the count array into a key by joining the counts as a string.
      String key = count.join('#');

      // Ensure the key exists in the map.
      anagramsMap.putIfAbsent(key, () => []);

      // Add the string to the appropriate group in the map.
      anagramsMap[key]!.add(s);
    }

    // Convert the values of the map into a list of lists.
    List<List<String>> result = anagramsMap.values.toList();

    return result;
  }
}