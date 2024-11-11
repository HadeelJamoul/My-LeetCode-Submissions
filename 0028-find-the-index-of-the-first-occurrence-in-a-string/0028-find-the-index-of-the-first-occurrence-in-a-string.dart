class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0; // Edge case: empty needle
    if (needle.length > haystack.length) return -1; // Needle can't fit

    // Loop through `haystack` with a sliding window of `needle.length`
    for (int i = 0; i <= haystack.length - needle.length; i++) {
      // Check if substring matches `needle`
      if (haystack.substring(i, i + needle.length) == needle) {
        return i; // Found the first occurrence
      }
    }

    return -1; // No match found
  }
}
