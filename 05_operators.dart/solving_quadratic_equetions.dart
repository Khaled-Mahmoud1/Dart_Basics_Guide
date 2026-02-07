import 'dart:math';

void main() {
  // Coefficients of the quadratic equation ax^2 + bx + c = 0
  double a = 1;
  double b = -3;
  double c = 2;

  // Calculate the discriminant
  double discriminant = b * b - 4 * a * c;

  if (discriminant > 0) {
    // Two distinct real roots
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print('Roots are: $root1 and $root2');
  } else if (discriminant == 0) {
    // One real root (double root)
    double root = -b / (2 * a);
    print('Root is: $root');
  } else {
    // No real roots
    print('No real roots');
  }
}
