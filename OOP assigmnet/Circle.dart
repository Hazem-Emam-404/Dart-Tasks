import 'dart:math';

class Circle {
  double _radius = 0;

  Circle();

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    } else {
      print('Radius cannot be negative');
    }
  }

  double get area => pi * _radius * _radius;

  double get circumference => 2 * pi * _radius;
}

void main() {
  Circle c = Circle();
  c.radius = 5;
  print('Area: ${c.area.toStringAsFixed(2)}');
  print('Circumference: ${c.circumference.toStringAsFixed(2)}');

  c.radius = -3;
}
