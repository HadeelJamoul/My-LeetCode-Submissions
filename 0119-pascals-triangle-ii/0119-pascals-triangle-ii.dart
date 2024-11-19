class Solution {
  List<int> getRow(int rowIndex) {
    rowIndex = rowIndex + 1;
    List<List<int>> res = [
      [1]
    ];
    for (int i = 0; i < rowIndex - 1; ++i) {
      List<int> temp = [0] + res[res.length - 1] + [0];
      List<int> row = [];
      int rowListLimit = res[res.length - 1].length;
      for (int j = 0; j < rowListLimit + 1; ++j) {
        row.add(temp[j] + temp[j + 1]);
      }
      res.add(row);
    }
    return res[rowIndex - 1];
  }
}