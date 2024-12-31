class Solution {
  String reverseWords(String s) {
    List<String> sList = s.split(' ');
    List<String> result = [];
    // print(sList);

    for (int i = 0; i < sList.length; ++i) {
      result.add(sList[i].split('').reversed.join());
    }
    // print(result);
    return result.join(' ');
  }
}
