import 'dart:io';

bool isValidEmail(String email) {
  if (email.contains(" ")) return false;
  if (!email.contains("@")) return false;
  if (!email.contains(".")) return false;

  if (email.startsWith(".") || email.endsWith(".")) return false;
  if (email.contains("..")) return false;

  List<String> parts = email.split("@");

  if (parts.length != 2) return false;
  if (parts[0].isEmpty || parts[1].isEmpty) return false;

  if (!parts[1].contains(".")) return false;

  List<String> domainParts = parts[1].split(".");

  if (domainParts.length < 2) return false;
  if (domainParts.last.length < 2) return false;

  return true;
}

void main() {
  while (true) {
    print("Enter your email:");
    String email = stdin.readLineSync()!;

    if (isValidEmail(email)) {
      print("Valid Email");
      break;
    } else {
      print("Invalid Email, try again.\n");
    }
  }
}

/*
Input: khaled@gmail.com
Output: Valid Email
=======================
Input: khaled gmail.com
Output: Invalid Email
=======================
Input: khaled@gmailcom
Output: Invalid Email
=======================
Input: @gmail.com
Output: Invalid Email

 */
