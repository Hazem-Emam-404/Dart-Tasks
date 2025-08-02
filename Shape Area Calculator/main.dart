import "dart:io";
import "dart:math";

void calculateArea() {
  print("Welcome to calculate area program !!");
  while (true) {
    print("please choose one of the following shapes:");
    stdout.writeln("1- Rectangle\n2- Square\n3- Circle");
    String ch = stdin.readLineSync()!;
    while (ch != '1' && ch != '2' && ch != '3') {
      print("Incorrect Choice, please choose again.");
      stdout.writeln("1- Rectangle\n2- Square\n3- Circle");
    }
    if (ch == '1') {
      double width, length;
      stdout.write("please enter the length: ");
      length = double.parse(stdin.readLineSync()!);
      stdout.write("please enter the width: ");
      width = double.parse(stdin.readLineSync()!);
      print(
        "The area of the Rectangle is: ${(width * length).toStringAsFixed(2)} m^2",
      );
    } else if (ch == '2') {
      double length;
      stdout.write("please enter the side length of the square: ");
      length = double.parse(stdin.readLineSync()!);
      print(
        "The area of the Rectangle is: ${pow(length, 2).toStringAsFixed(2)} m^2",
      );
    } else {
      double radius;
      stdout.write("please enter the radius of the circle: ");
      radius = double.parse(stdin.readLineSync()!);
      print(
        "The area of the Rectangle is: ${(pi * pow(radius, 2)).toStringAsFixed(2)} m^2",
      );
    }

    stdout.write("Do you want to calculate another area? (y/n)");
    ch = stdin.readLineSync()!;
    print("\n");
    if (ch.toLowerCase() == 'n') break;
  }
}

void main() {
  calculateArea();
}
