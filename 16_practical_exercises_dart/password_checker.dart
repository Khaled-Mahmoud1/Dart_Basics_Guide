import 'dart:io';

bool isValidPassword(String password) {
  bool hasUpper = false;
  bool hasLower = false;
  bool hasDigit = false;

  if (password.length < 8) {
    return false;
  }

  for (int i = 0; i < password.length; i++) {
    String char = password[i];

    if (char.contains(RegExp(r'[A-Z]'))) {
      hasUpper = true;
    } else if (char.contains(RegExp(r'[a-z]'))) {
      hasLower = true;
    } else if (char.contains(RegExp(r'[0-9]'))) {
      hasDigit = true;
    }
  }

  return hasUpper && hasLower && hasDigit;
}

void main() {
  print("Enter your password:");
  String password = stdin.readLineSync()!;

  if (isValidPassword(password)) {
    print("Strong Password");
  } else {
    print("Weak Password!");
  }
}
