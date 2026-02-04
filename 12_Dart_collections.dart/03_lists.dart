void main() {
  // Immutable list
  var myList = const ['A', 'B', 2.4, false, 'C', 12];

  //myList.add(2); Unsupported operation: Cannot add to an unmodifiable list
  //myList[2] = 13; Unsupported operation: Cannot modify an unmodifiable list
  print(myList);
}
