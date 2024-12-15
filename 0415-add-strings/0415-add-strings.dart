class Solution {
  String addStrings(String num1, String num2) {
    int carray = 0;
    int i = num1.length - 1;
    int j = num2.length - 1;
    StringBuffer result = StringBuffer();
    int sum = 0;
    while (i > -1 || j > -1) {
      int d1 = i > -1 ? int.parse(num1[i]) : 0;
      int d2 = j > -1 ? int.parse(num2[j]) : 0;
      sum = d1 + d2 + carray;
      result.write(sum % 10);
      carray = sum ~/ 10;
      --i;
      --j;
    }
    if (carray > 0) {
      result.write(carray);
    }
    return result.toString().split('').reversed.join();
  }
}