class Solution {
  int hIndex(List<int> citations) {
    int n = citations.length;

    for (int h = n; h >= 0; --h) {
      int num_papers = 0;
      for (int c in citations) {
        if (c >= h) {
          num_papers++;
        }
      }
      if (num_papers >= h) {
        return h;
      }
    }
    return 0;
  }
}