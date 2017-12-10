import 'dart:math';
import 'dart:io';

void quadratic_equation() {
  double a, b, c, discriminant, x1, x2;
  stdout.writeln('Please add a, b, c using space!');
  try {
    String user_input = stdin.readLineSync();
    List<String> user_input_list = user_input.split(' ');
    List<double> some = user_input_list.map((item) => double.parse(item)).toList();
    a = some[0];
    b = some[1];
    c = some[2];
    discriminant = pow(b, 2) - 4*a*c;

    stdout.writeln('Discrimenant = $discriminant');

    if(discriminant > 0) {
      x1 = (-b + sqrt(discriminant)) / (2*a);
      x2 = (-b - sqrt(discriminant)) / (2*a);
      stdout.writeln('Roots are real and different: X1= $x1, X2= $x2');
    } else if(discriminant == 0) {
      stdout.writeln('Roots are real and same.');
      x1 = (-b - sqrt(discriminant))/ (2*a);
      stdout.writeln('X1 == X2 = $x1');
    } else {
      double real_part = -b / (2*a);
      double imaginary_part = sqrt(-discriminant) / (2*a);
      stdout.writeln('Roots are complex and different.');
      stdout.writeln('X1 = ${real_part + imaginary_part}');
      stdout.writeln('X2 = ${real_part - imaginary_part}');
    }

  } catch(err) {
    stderr.writeln('$err');
  }
}
