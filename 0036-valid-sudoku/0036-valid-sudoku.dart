class Solution {
  bool isValidSudoku(List<List<String>> board) {
    // Lists to store sets for each row, column, and box
    List<Set<String>> rows = List.generate(9, (_) => {});
    List<Set<String>> cols = List.generate(9, (_) => {});
    List<Set<String>> boxes = List.generate(9, (_) => {});

    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {
        String value = board[r][c];

        // Skip if the cell is empty
        if (value == '.') continue;

        // Calculate box index
        int boxIndex = (r ~/ 3) * 3 + (c ~/ 3);

        // Check if the value is already in the current row, column, or box
        if (rows[r].contains(value) ||
            cols[c].contains(value) ||
            boxes[boxIndex].contains(value)) {
          return false;
        }

        // Add value to row, column, and box sets
        rows[r].add(value);
        cols[c].add(value);
        boxes[boxIndex].add(value);
      }
    }

    return true;
  }
}