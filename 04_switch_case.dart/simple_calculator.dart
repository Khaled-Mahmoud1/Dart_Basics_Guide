import 'dart:io';

void main() {
  while (true) {
    print("Enter the first number:");
    double? num1 = double.tryParse(stdin.readLineSync() ?? "");

    if (num1 == null) {
      print("Invalid number, try again.\n");
      continue;
    }

    print("Enter operator (+, -, *, /, %):");
    String oper = stdin.readLineSync() ?? "";

    print("Enter the second number:");
    double? num2 = double.tryParse(stdin.readLineSync() ?? "");

    if (num2 == null) {
      print("Invalid number, try again.\n");
      continue;
    }

    double result = 0;
    bool valid = true;

    switch (oper) {
      case "+":
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "*":
        result = num1 * num2;
        break;
      case "%":
        result = num1 % num2;
        break;
      case "/":
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print("Can't divide by zero");
          valid = false;
        }
        break;
      default:
        print("Invalid operation");
        valid = false;
    }

    if (valid) {
      print("Result = $result");
    }

    print("Do you want another operation? (y/n):");
    String choice = stdin.readLineSync() ?? "n";

    if (choice.toLowerCase() == 'n') {
      print("Exiting calculator... Thanks!");
      break;
    }
  }
}
