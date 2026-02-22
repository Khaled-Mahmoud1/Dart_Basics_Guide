import 'dart:io';

void main() {
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Table up to:");
  int limit = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= limit; i++) {
    print("$num x $i = ${num * i}");
  }
}
