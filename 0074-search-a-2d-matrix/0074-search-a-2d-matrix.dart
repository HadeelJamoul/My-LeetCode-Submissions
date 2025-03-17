class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    //? the number of rows

    int m = matrix.length;
    //? the number of column
    int n = matrix[0].length;
    int left = 0;
    int right = m * n - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      //? the formula to extract the row index
      int i = mid ~/ n;
      //? the formula to extract the column index
      int j = mid % n;
      //? get the middle number index
      int mid_num = matrix[i][j];

      if (mid_num > target) {
        right = mid - 1;
      } else if (mid_num < target) {
        left = mid + 1;
      }
      if (mid_num == target) {
        return true;
      }
    }
    return false;
  }
}