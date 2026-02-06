import 'dart:io';

void main() {
  print("Enter a number:");
  int? number = int.tryParse(stdin.readLineSync() ?? "0");
  if (number != null && number > 0) {
    print("The number is positive.");
  } else if (number != null && number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}
