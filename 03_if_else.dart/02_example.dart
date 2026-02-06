import 'dart:io';

void main() {
  print("Enter an integer number:");
  int? number = int.tryParse(stdin.readLineSync() ?? "0");
  if (number != null && number % 2 == 0) {
    print("The number is even.");
  } else {
    print("The number is odd.");
  }
}
