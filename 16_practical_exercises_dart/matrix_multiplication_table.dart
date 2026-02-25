import 'dart:io';

void main() {
  print("Enter n:");
  int n = int.parse(stdin.readLineSync()!);

  matrixMultiplicationTable(n);
}

void matrixMultiplicationTable(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      int result = i * j;
      stdout.write("${result.toString().padLeft(4)}");
    }
    print("");
  }
}
