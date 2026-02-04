void main() {
  var intSet = {1, 2, 3, 4, 5};
  print(intSet); // Output: {1, 2, 3, 4, 5}

  intSet.add(6);
  print(intSet); // Output: {1, 2, 3, 4, 5, 6}

  intSet.remove(3);
  print(intSet); // Output: {1, 2, 4, 5, 6}

  print(intSet.length); // Output: 5

  var mySet = <String>{'Ahmed', 'Khaled', 'Mahmoud'};
  print(mySet);

  // Mixed type set
  var anotherSet = {'a', 2, true, 4.5};
  print(anotherSet);

  anotherSet.remove('a');
  print(anotherSet); // Output: {2, true, 4.5}
}
