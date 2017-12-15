@TestOn('vm')
import 'package:quadratic_equation/quadratic_equation.dart';
import 'package:test/test.dart';

void main() {
  test('Discriminant > 0', () {
    Map<String, double> roots = calculationOfRoots(2, -3, 1);
    expect(roots['x1'], equals(1.0));
    expect(roots['x2'], equals(0.5));
  });
  test('Discriminant === 0', () {
    Map<String, double> roots = calculationOfRoots(1, -6, 9);
    expect(roots['x1'], equals(3.0));
    expect(roots['x2'], equals(3.0));
    expect(roots['x1'], equals(roots['x2']));
  });
  test('Discriminant < 0', () {
    Map<String, double> roots = calculationOfRoots(5, 3, 7);
    expect(roots['x1'], equals(0.8445523142259597));
    expect(roots['x2'], equals(-1.4445523142259598));
  });
}