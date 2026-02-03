void main() {
  print(add(2, 3));
  print(addOptional(5));
  print(addOptional(2, 4));
  print(addNamed(a: 4, b: 6));
}

// required parameters
int add(int a, int b) {
  return a + b;
}

// optional positional
int addOptional(int a, [int b = 0]) {
  return a + b;
}

// optional named
int addNamed({required int a, int b = 0}) {
  return a + b;
}
