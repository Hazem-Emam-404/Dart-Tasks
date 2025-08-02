import 'dart:io';

void calc(double a, double b) {
  stdout.write("Choose one of the followin operations (+, -, *, /): ");
  String op = stdin.readLineSync()!;
  double result;

  switch (op) {
    case '+':
      result = add(a, b);
      break;
    case '-':
      result = subtract(a, b);
      break;
    case '*':
      result = multiply(a, b);
      break;
    case '/':
      if (b == 0) {
        print("Error: Division by zero");
        return;
      }
      result = divide(a, b);
      break;
    default:
      print("Invalid operation");
      return;
  }

  print("Result: $a $op $b = $result");
}

double add(double x, double y) => x + y;

double subtract(double x, double y) => x - y;

double multiply(double x, double y) => x * y;

double divide(double x, double y) => x / y;


void main() {
  while (true) {
    stdout.write("Enter first number: ");
    double a = double.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    double b = double.parse(stdin.readLineSync()!);

    calc(a, b);

    stdout.write("Do you want to calculate again? (y/n): ");
    String ch = stdin.readLineSync()!;
    if (ch.toLowerCase() == 'n') break;
  }
}

