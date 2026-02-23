import 'dart:io';

double calculateTotal(double g1, double g2, double g3) {
  return g1 + g2 + g3;
}

double calculateAverage(double total) {
  return total / 3;
}

String getGrade(double avg) {
  if (avg >= 85)
    return "Excellent";
  else if (avg >= 75)
    return "Very Good";
  else if (avg >= 65)
    return "Good";
  else if (avg >= 50)
    return "Pass";
  else
    return "Fail";
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

  print("Enter grade 1:");
  double g1 = double.parse(stdin.readLineSync()!);

  print("Enter grade 2:");
  double g2 = double.parse(stdin.readLineSync()!);

  print("Enter grade 3:");
  double g3 = double.parse(stdin.readLineSync()!);

  double total = calculateTotal(g1, g2, g3);
  double avg = calculateAverage(total);
  String grade = getGrade(avg);

  printResult(name, total, avg, grade);
}
