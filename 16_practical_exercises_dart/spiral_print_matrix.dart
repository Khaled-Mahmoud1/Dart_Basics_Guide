void spiralPrint(List<List<int>> matrix) {
  int top = 0;
  int bottom = matrix.length - 1;
  int left = 0;
  int right = matrix[0].length - 1;

  while (top <= bottom && left <= right) {
    // top row
    for (int i = left; i <= right; i++) {
      print(matrix[top][i]);
    }
    top++;

    // right column
    for (int i = top; i <= bottom; i++) {
      print(matrix[i][right]);
    }
    right--;

    if (top <= bottom) {
      // bottom row
      for (int i = right; i >= left; i--) {
        print(matrix[bottom][i]);
      }
      bottom--;
    }

    if (left <= right) {
      // left column
      for (int i = bottom; i >= top; i--) {
        print(matrix[i][left]);
      }
      left++;
    }
  }
}

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  spiralPrint(matrix);
}
