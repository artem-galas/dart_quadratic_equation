@TestOn('vm')
import 'dart:io';
import 'package:quadratic_equation/quadratic_equation.dart';
import 'package:test/test.dart';

void main() {
  test('Discriminant > 0', () {
    var quadraticEquation = new QuadraticEquation(2.0, -3.0, 1.0);
    quadraticEquation.calculationOfRoots();
    expect(quadraticEquation.x1, equals(1.0));
    expect(quadraticEquation.x2, equals(0.5));
  });
  test('Discriminant === 0', () {
    var quadraticEquation = new QuadraticEquation(1.0, -6.0, 9.0);
    quadraticEquation.calculationOfRoots();
    expect(quadraticEquation.x1, equals(3.0));
    expect(quadraticEquation.x2, equals(3.0));
    expect(quadraticEquation.x1, equals(quadraticEquation.x2));
  });
  test('Discriminant < 0', () {
    var quadraticEquation = new QuadraticEquation(5.0, 3.0, 7.0);
    quadraticEquation.calculationOfRoots();
    expect(quadraticEquation.x1, equals(0.8445523142259597));
    expect(quadraticEquation.x2, equals(-1.4445523142259598));
  });
}