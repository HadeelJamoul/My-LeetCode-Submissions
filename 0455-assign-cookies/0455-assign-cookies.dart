class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    g.sort();
    s.sort();
    int p1 = 0;
    int p2 = 0;
    int counter = 0;

    while (p1 < g.length && p2 < s.length) {
      if (g[p1] <= s[p2]) {
        counter += 1;
        p1++;
      }
      p2++;
    }

    return counter;
  }
}