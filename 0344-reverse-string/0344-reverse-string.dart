//inPlace means doing operation on the same array without copping it
class Solution {
  void reverseString(List<String> s) {
    int l = 0;
    int r = s.length  - 1;
    if(s.length == 1) return;
    while (l < r) {
      String temp = s[l];
      s[l] = s[r];
      s[r] = temp;
      l = l + 1;
      r = r - 1;
    }
    //print(s);
  }
}