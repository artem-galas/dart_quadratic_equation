import 'dart:math';

class QuadraticEquation {
  double a;
  double b;
  double c;
  double discriminant;
  double x1;
  double x2;
  QuadraticEquation(double a, double b, double c) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.discriminant = pow(b, 2) - 4*a*c;
  }

  String calculationOfRoots() {
    if(discriminant > 0) {
      x1 = (-b + sqrt(discriminant)) / (2*a);
      x2 = (-b - sqrt(discriminant)) / (2*a);
      return 'Roots are real and different:\n X1 = $x1 \n X2 = $x2';
    } else if(discriminant == 0) {
      x1 = (-b - sqrt(discriminant))/ (2*a);
      return 'Roots are real and same:\n X1 == X2 = $x1';
    } else {
      double realPart = -b / (2*a);
      double imaginaryPart = sqrt(-discriminant) / (2*a);
      x1 = realPart + imaginaryPart;
      x2 = realPart - imaginaryPart;
      return 'Roots are complex and different:\n X1 = $x1 \n X2 = $x2 ';
    }
  }
}
