import 'dart:io';

void main() {
  print('enter the price of the item:');
  double? price = double.tryParse(stdin.readLineSync() ?? "0");
  if (price != null && price >= 100) {
    print('The item is expensive.');
  } else if (price != null && price >= 50) {
    print('The item is moderately priced.');
  } else if (price != null && price > 0) {
    print('The item is cheap.');
  } else {
    print('Invalid price entered.');
  }
}
