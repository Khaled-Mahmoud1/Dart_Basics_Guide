import 'dart:io';

void main() {
  print("Enter your name:");
  String name = stdin.readLineSync() ?? "Guest";

  print("Enter your age:");
  int age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("Enter your salary:");
  double salary = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  print("\n===== DATA =====");
  print("Name: $name");
  print("Age: $age");
  print("Salary: $salary");
}
