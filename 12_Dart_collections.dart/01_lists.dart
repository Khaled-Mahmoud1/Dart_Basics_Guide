void main() {
  var numbers = [1, 2, 3, 4, 5];
  print(numbers);

  // dynamic list
  var mixedList = [1, 'two', 3.6, true];
  mixedList.add(20);
  mixedList.add('three');
  mixedList.add(4.5);
  print(mixedList);

  for (var item in mixedList) {
    print(item);
  }

  List<int> intList = [10, 20, 30];
  // intList.add("Omar"); Can not add String to List<int>
  intList.add(40);
  print(intList);

  var myTeam = <String>['Ahmed', 'Khaled', 'Mahmoud'];
  //myTeam.add(1); the argument type 'int' can't be assigned to the parameter type 'String'
  print(myTeam);
}
