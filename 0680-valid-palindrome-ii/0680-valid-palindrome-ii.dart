class Solution {
  bool validPalindrome(String s) {
    int left = 0;
    int right = s.length - 1;
    while (left < right) {
      if (s[left] != s[right]) {
        // skip the left char
        int l1 = left + 1;
        int r1 = right;

        // skip the right char
        int l2 = left;
        int r2 = right - 1;
        while (l1 < r1 && s[l1] == s[r1]) {
          l1++;
          r1--;
        }

        while (l2 < r2 && s[l2] == s[r2]) {
          l2++;
          r2--;
        }

        return l1 >= r1 || l2 >= r2;
      }
      left++;
      right--;
    }
    return true;
  }
}