import 'dart:io';
import 'package:quadratic_equation/quadratic_equation.dart';

void main(List<String> arguments) {
  stdout.writeln('Please add a, b, c using space!');
  String userInput = stdin.readLineSync();
  try {
    List<double> userInputList = userInput
      .split(' ')
      .map((item) => double.parse(item)).toList();

    QuadraticRoots roots = calculationOfRoots(
      userInputList[0],
      userInputList[1],
      userInputList[2]);
    
    stdout.writeln(roots);
  } catch(error) {
    stderr.writeln(error);
  }
}
