int globalVar = 100;

void main() {
  int localVar = 50;

  print(globalVar);
  print(localVar);

  test();
}

void test() {
  int insideFunction = 10;
  print(insideFunction);
}
