class Solution {
  int hammingDistance(int x, int y) {
    x.toRadixString(2).padLeft(4, '0');
    y.toRadixString(2).padLeft(4, '0');
    String xor = (x ^ y).toRadixString(2).padLeft(4, '0');
    print(xor);
    print(xor.split(''));
    int res = xor.split('').where((char) => char == '1').length;
    print(res);
    return res;
  }
}