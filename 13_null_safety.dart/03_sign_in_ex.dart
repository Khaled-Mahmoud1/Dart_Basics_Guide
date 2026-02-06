import 'dart:io';

void main() {
  List<Map<String, String>> users = [
    {"username": "Khaled", "password": "1234"},
    {"username": "Mohamed", "password": "5678"},
    {"username": "Ali", "password": "0000"},
  ];

  print('Enter username:');
  String? username = stdin.readLineSync();

  print('Enter password:');
  String? password = stdin.readLineSync();

  // check user
  Map<String, String>? result = users.firstWhere(
    (user) => user["username"] == username,
    orElse: () => {},
  );

  if (result.isEmpty) {
    print('User not found');
  } else if (result["password"] == password) {
    print('Login successful!');
    print('Welcome ${result["username"]}');
  } else {
    print('Wrong password!');
  }
}
