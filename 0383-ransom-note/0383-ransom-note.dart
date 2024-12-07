class Solution {
  bool canConstruct(String ransomNote, String magazine) {

    Map<String, int> ransomNoteMap = {};
    Map<String, int> magazineMap = {};

    for (int i = 0; i < ransomNote.length; ++i) {
      ransomNoteMap[ransomNote[i]] = (ransomNoteMap[ransomNote[i]] ?? 0) + 1;
    }
    for (int i = 0; i < magazine.length; ++i) {
      magazineMap[magazine[i]] = (magazineMap[magazine[i]] ?? 0) + 1;
    }

    for (String char in ransomNoteMap.keys) {
      if ((magazineMap[char] ?? 0) < ransomNoteMap[char]!) {
        return false;
      }
    }

    return true;
  }
}