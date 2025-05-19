class Solution {
  bool isPalindrome(String s) {
    String regex = r"(?:_|[^\w\s])+";
    String text = s.replaceAll(RegExp(regex, unicode: true), '');
    text = text.replaceAll(' ', '').toLowerCase();
    if (text.split('').reversed.join() != text) {
      return false;
    }
    return true;
  }
}