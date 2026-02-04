void main() {
  var myInfo = {'name': 'Khaled', 'age': 20, 'isStudent': true};
  print(myInfo); // Output: {name: Khaled, age: 20, isStudent: true}

  myInfo['age'] = 21;
  print(myInfo); // Output: {name: Khaled, age: 21, isStudent: true}

  myInfo['faculty of'] = 'MTIS';
  print(myInfo);
  // Output: {name: Khaled, age: 21, isStudent: true, faculty of : MTIS}

  Map<int, String> x = {1: 'one', 2: 'two', 3: 'three'};
  print(x); // Output: {1: one, 2: two, 3: three}
  print(x[2]); // Output: two
  print(x.length); // Output: 3
  x.remove(3);
  print(x); // Output: {1: one, 2: two}
  x.clear();
  print(x); // Output: {}
}
