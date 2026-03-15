import 'dart:io';
import 'dart:math';

bool isValidPassword(String password) {
  bool hasUpper = password.contains(RegExp(r'[A-Z]'));
  bool hasLower = password.contains(RegExp(r'[a-z]'));
  bool hasDigit = password.contains(RegExp(r'[0-9]'));
  bool hasSpecial = password.contains(RegExp(r'[!@#\$%^&*]'));

  return password.length >= 8 && hasUpper && hasLower && hasDigit && hasSpecial;
}

void checkPassword() {
  print("\nEnter your password:");
  String password = stdin.readLineSync()!;

  if (isValidPassword(password)) {
    print("Strong Password");
  } else {
    print("Weak Password");

    if (password.length < 8) {
      print("- Must be at least 8 characters");
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      print("- Must contain an uppercase letter");
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      print("- Must contain a lowercase letter");
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      print("- Must contain a number");
    }
    if (!password.contains(RegExp(r'[!@#\$%^&*]'))) {
      print("- Must contain a special character");
    }
  }
}

void generatePassword() {
  const chars =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*";

  Random random = Random();
  String password = "";

  for (int i = 0; i < 12; i++) {
    password += chars[random.nextInt(chars.length)];
  }

  print("\nGenerated Password: $password");
}

void showRules() {
  print("""
Password Rules:
- At least 8 characters
- Must contain uppercase letter
- Must contain lowercase letter
- Must contain number
- Must contain special character (!@#\$%^&*)
""");
}

void main() {
  while (true) {
    print("\n==== Password Tool ====");
    print("1. Check Password Strength");
    print("2. Generate Strong Password");
    print("3. Show Password Rules");
    print("4. Exit");

    stdout.write("Choose an option: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case "1":
        checkPassword();
        break;

      case "2":
        generatePassword();
        break;

      case "3":
        showRules();
        break;

      case "4":
        print("Goodbye!");
        return;

      default:
        print("Invalid choice, try again.");
    }
  }
}
