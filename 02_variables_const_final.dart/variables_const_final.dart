void main() {
  var x = 10; // type inferred
  final y = 20; // runtime constant
  const z = 30; // compile-time constant

  dynamic value = "Hello";
  value = 50; // allowed

  print(x);
  print(y);
  print(z);
  print(value);
}
