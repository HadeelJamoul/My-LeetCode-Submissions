class Solution {
  int hammingDistance(int x, int y) {
    String xor = (x ^ y).toRadixString(2).padLeft(4, '0');
    int res = xor.split('').where((char) => char == '1').length;
    return res;
  }
}