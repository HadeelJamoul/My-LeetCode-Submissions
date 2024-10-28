class Solution {
  int romanToInt(String s) {
    int sum = 0;
  Map<String, int> romanMix = {
    "IV": 4,
    "IX": 9,
    "XL": 40,
    "XC": 90,
    "CD": 400,
    "CM": 900,
  };

  Map<String, int> roman = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  for (int i = 0; i < s.length; ++i) {
    if (i + 1 != s.length && romanMix.containsKey(s[i] + s[i + 1])) {
      String mix = s[i] + s[i + 1];
      sum += romanMix[mix]!;
      i++;
    } else if (roman.containsKey(s[i])) {
      sum += roman[s[i]]!;
    }
  }
  return sum;
  }
}