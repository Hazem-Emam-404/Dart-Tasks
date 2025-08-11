class Rectangle {
  double _width = 0;
  double _height = 0;

  Rectangle();

  set width(double value) {
    if (value >= 0) {
      _width = value;
    } else {
      print('Value cannot be negative');
    }
  }

  set height(double value) {
    if (value >= 0) {
      _height = value;
    } else {
      print('Value cannot be negative');
    }
  }

  double get area => _width * _height;

  void printDimensions() {
    print('the width: $_width ,the height: $_height');
  }
}

void main() {
  Rectangle r = Rectangle();
  r.width = 5;
  r.height = 10;
  r.printDimensions();
  print('Area: ${r.area}');
  r.width = 7;
  r.height = -3;
  r.printDimensions();
  print('Area: ${r.area}');
}
