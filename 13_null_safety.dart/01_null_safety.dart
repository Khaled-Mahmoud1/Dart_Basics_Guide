void main() {
  // .. ? .. ??

  int? a;
  int b;
  // b = a;  cannot assign nullable to non-nullable
  b = a ?? 10; // Use null-aware operator to provide a default value
  print(b); // Output: 10

  String? name = null;
  print(name?.length); // Output: null

  int c = getData() ?? 0;
  print(c); // getData returns null, so c will be assigned 0
}

getData() {
  int? a = null;
  return a;
}
