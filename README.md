# quadratic_equation [![Build Status](https://travis-ci.org/artem-galas/dart_quadratic_equation.svg?branch=master)](https://travis-ci.org/artem-galas/dart_quadratic_equation)

A sample command-line application.

Which can find roots of quadratic equation.

## How to Run?
```bash
git clone
pub get
pub run bin/main.dart
```
## How it works?
After running the program you get

When Discrimenant === 0 ->
```
Please add a, b, c using space!
3 18 27
Discrimenant = 0.0
Roots are real and same.
X1 == X2 = 3.0
```
When Discrimenant > 0 ->
```
Please add a, b, c using space!
1 -70 600
Discrimenant = 2500.0
Roots are real and different: X1= 60.0, X2= 10.0
```
When Discrimenant < 0 ->
```
Please add a, b, c using space!
6 8 10
Discrimenant = -176.0
Roots are complex and different.
X1 = 0.33333333333333337
X2 = -1.7722082634518
```
