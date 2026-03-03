int findMissingNumber(List<int> nums) {
  int n = nums.length + 1;
  int expectedSum = n * (n + 1) ~/ 2;

  int actualSum = 0;
  for (int num in nums) {
    actualSum += num;
  }

  return expectedSum - actualSum;
}

void main() {
  List<int> numbers = [1, 2, 4, 5, 6];
  print("Missing Number: ${findMissingNumber(numbers)}");
}
