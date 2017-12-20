import 'dart:math';

class QuadraticRoots {
  final double x1;
  final double x2;
  QuadraticRoots(final double this.x1, final double this.x2) {}
}

QuadraticRoots calculationOfRoots(num a, num b, num c ) {
  a = a.toDouble();
  b = b.toDouble();
  c = c.toDouble();
  double x1;
  double x2;
  final double discriminant = pow(b, 2) - 4*a*c;

  if(discriminant > 0) {
    x1 = (-b + sqrt(discriminant)) / (2*a);
    x2 = (-b - sqrt(discriminant)) / (2*a);
  } else if(discriminant == 0) {
    x1 = x2 = (-b - sqrt(discriminant))/ (2*a);
  } else {
    double realPart = -b / (2*a);
    double imaginaryPart = sqrt(-discriminant) / (2*a);
    x1 = realPart + imaginaryPart;
    x2 = realPart - imaginaryPart;
  }

  return new QuadraticRoots(x1, x2);
}
