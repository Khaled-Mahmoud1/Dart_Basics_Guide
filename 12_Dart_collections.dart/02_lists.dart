void main() {
  List<String> names = ['Ahmed', 'Khaled', 'Mahmoud'];

  // Accessing elements
  print(names[0]); // Output: Ahmed
  print(names[1]); // Output: Khaled
  print(names[2]); // Output: Mahmoud

  print(names.reversed); // Output: (Mahmoud, Khaled, Ahmed)

  // Adding an element
  names.add('Ali');
  print(names); // Output: [Ahmed, Khaled, Mahmoud, Ali]

  // Removing an element
  names.remove('Khaled');
  print(names); // Output: [Ahmed, Mahmoud, Ali]

  // Iterating through the list
  for (String name in names) {
    print(name);
  }

  // Getting the length of the list
  print('Length: ${names.length}'); // Output: Length: 3

  // Using forEach to print each name
  names.forEach(print); // Output: Ahmed Mahmoud Ali

  // Removing an element by index
  names.removeAt(1);
  print(names); // Output: [Ahmed, Ali]

  // Clearing the list
  names.clear();
  print(names); // Output: []
}
