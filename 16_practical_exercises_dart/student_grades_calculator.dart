import 'dart:io';

double readGrade(String message) {
  while (true) {
    print(message);
    String input = stdin.readLineSync()!;

    double? grade = double.tryParse(input);

    if (grade != null && grade >= 0 && grade <= 100) {
      return grade;
    } else {
      print("Invalid grade! Please enter a number between 0 and 100.");
    }
  }
}

double calculateTotal(double g1, double g2, double g3) {
  return g1 + g2 + g3;
}

double calculateAverage(double total) {
  return total / 3;
}

String getGrade(double avg) {
  if (avg >= 85) {
    return "Excellent";
  } else if (avg >= 75) {
    return "Very Good";
  } else if (avg >= 65) {
    return "Good";
  } else if (avg >= 50) {
    return "Pass";
  } else {
    return "Fail";
  }
}

void printResult(String name, double total, double avg, String grade) {
  print("\n===== Student Result =====");
  print("Name : $name");
  print("Total : $total");
  print("Average : ${avg.toStringAsFixed(2)}");
  print("Grade : $grade");
}

void main() {
  print("Enter student name:");
  String name = stdin.readLineSync()!;

  double g1 = readGrade("Enter grade 1:");
  double g2 = readGrade("Enter grade 2:");
  double g3 = readGrade("Enter grade 3:");

  double total = calculateTotal(g1, g2, g3);
  double avg = calculateAverage(total);
  String grade = getGrade(avg);

  printResult(name, total, avg, grade);
}
