class Solution {
  void rotate(List<List<int>> matrix) {
    int n = matrix.length;

    // Transpose the matrix
    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        // Swap matrix[i][j] with matrix[j][i]
        int temp = matrix[i][j];
        matrix[i][j] = matrix[j][i];
        matrix[j][i] = temp;
      }
    }

    // Reflect the matrix horizontally
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n ~/ 2; j++) {
        // Swap matrix[i][j] with matrix[i][n - j - 1]
        int temp = matrix[i][j];
        matrix[i][j] = matrix[i][n - j - 1];
        matrix[i][n - j - 1] = temp;
      }
    }
  }
}