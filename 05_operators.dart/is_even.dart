bool isEven(int n) {
  return (n & 1) == 0;
}

void main() {
  print(isEven(10)); // true
  print(isEven(7));  // false
}