//Slide a window
class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0;
    if (needle.length > haystack.length) return -1;
    int limit = haystack.length - needle.length; // 11 - 5 = 6 => limit = 6
    for (int i = 0; i <= limit; ++i) {
      //in substring the end is optional and it gives The position just after the last character
      //((0 , 0+5) = missi is it equal to issip)
      //((1 , 6) = issis)
      //((2 , 7) = ssiss)
      //((3 , 8) = sissi)
      //((4 , 9) = issip)
      //((5, 10) = ssipp)
      //((6, 11) = sippi) .
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }
    return -1;
  }
}
