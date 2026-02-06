import 'dart:io';

void main() {
  int n = 5;

  for (int i = 1; i <= n; i++) {
    // Print spaces
    for (int space = 1; space <= n - i; space++) {
      stdout.write(' ');
    }
    // Print stars
    for (int star = 1; star <= (2 * i - 1); star++) {
      stdout.write('*');
    }

    print('');
  }
}
/*
Output:

    *
   ***
  *****
 *******
*********

*/ 