import 'dart:io';

String checkPasswordStrength(String password) {
  int score = 0;

  if (password.length >= 8) {
    score++;
  }

  if (password.contains(RegExp(r'[A-Z]'))) {
    score++;
  }

  if (password.contains(RegExp(r'[a-z]'))) {
    score++;
  }

  if (password.contains(RegExp(r'[0-9]'))) {
    score++;
  }

  if (password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
    score++;
  }

  if (score <= 2) {
    return "Weak";
  } else if (score == 3) {
    return "Medium";
  } else {
    return "Strong";
  }
}

void main() {
  print("Enter your password:");
  String password = stdin.readLineSync()!;

  String result = checkPasswordStrength(password);

  print("Password Strength: $result");
}
