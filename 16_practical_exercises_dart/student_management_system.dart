import 'dart:io';

List<Map<String, dynamic>> students = [];

void addStudent() {
  print("Enter student name:");
  String name = stdin.readLineSync()!;

  print("Enter grade 1:");
  double g1 = double.parse(stdin.readLineSync()!);

  print("Enter grade 2:");
  double g2 = double.parse(stdin.readLineSync()!);

  print("Enter grade 3:");
  double g3 = double.parse(stdin.readLineSync()!);

  double avg = (g1 + g2 + g3) / 3;

  students.add({
    "name": name,
    "grades": [g1, g2, g3],
    "average": avg
  });

  print("Student Added");
}

void showStudents() {
  if (students.isEmpty) {
    print("No students yet");
    return;
  }

  for (var s in students) {
    print("\nName: ${s["name"]}");
    print("Grades: ${s["grades"]}");
    print("Average: ${s["average"].toStringAsFixed(2)}");
  }
}

void searchStudent() {
  print("Enter name to search:");
  String name = stdin.readLineSync()!;

  for (var s in students) {
    if (s["name"].toLowerCase() == name.toLowerCase()) {
      print("\nFound Student:");
      print("Name: ${s["name"]}");
      print("Grades: ${s["grades"]}");
      print("Average: ${s["average"].toStringAsFixed(2)}");
      return;
    }
  }

  print("Student not found");
}

void topStudent() {
  if (students.isEmpty) {
    print("No students yet");
    return;
  }

  var top = students[0];

  for (var s in students) {
    if (s["average"] > top["average"]) {
      top = s;
    }
  }

  print("\nTop Student:");
  print("Name: ${top["name"]}");
  print("Average: ${top["average"].toStringAsFixed(2)}");
}

void main() {
  while (true) {
    print("\n===== Student Management System =====");
    print("1. Add Student");
    print("2. Show All Students");
    print("3. Search Student");
    print("4. Show Top Student");
    print("5. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        addStudent();
        break;
      case "2":
        showStudents();
        break;
      case "3":
        searchStudent();
        break;
      case "4":
        topStudent();
        break;
      case "5":
        print("Goodbye....");
        return;
      default:
        print("Invalid choice");
    }
  }
}