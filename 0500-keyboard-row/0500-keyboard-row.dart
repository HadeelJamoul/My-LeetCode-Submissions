class Solution {
  List<String> findWords(List<String> words) {
    Set<String> row1 = {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'};
    Set<String> row2 = {'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'};
    Set<String> row3 = {'z', 'x', 'c', 'v', 'b', 'n', 'm'};

    bool canBeTypedInTheSameRow(String word) {
      String lowerWord = word.toLowerCase();

      Set<String> getRowsForChar(String char) {
        if (row1.contains(char)) return row1;
        if (row2.contains(char)) return row2;
        return row3;
      }

      Set<String> charSet = getRowsForChar(lowerWord[0]);
      return lowerWord.split('').every(charSet.contains);
    }

    return words.where(canBeTypedInTheSameRow).toList();
  }
}