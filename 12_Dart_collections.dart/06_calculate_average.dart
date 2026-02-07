void main() {
  // Average = sum of numbers / total numbers

  List<double> numbers = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  double sum = 0;
  for (var num in numbers) {
    sum += num;
  }
  double average = sum / numbers.length;
  print("Average = $average");

  //===============================

  print('====== Using function to calculate average ======');
  List<double> numbers2 = [10, 20, 30, 40, 50, 60];
  calculateAverage(numbers2);

  List<double> numbers3 = [5, 15, 25, 35, 45];
  calculateAverage(numbers3);

  List<double> numbers4 = [2, 4, 6, 8, 10];
  calculateAverage(numbers4);
}

calculateAverage(List<double> numbers) {
  double sum = 0;
  for (var num in numbers) {
    sum += num;
  }
  double average = sum / numbers.length;
  print("Average = $average");
}
