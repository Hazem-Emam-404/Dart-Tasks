class Temperature {
  double _celsius = 0;

  Temperature();

  set celsius(double value) {
    if (value >= -273) {
      _celsius = value;
    } else {
      print('Value cannot be below absolute zero (-273°C)');
    }
  }

  double get celsius => _celsius;

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature();
  temp.celsius = 25;
  print('Celsius: ${temp.celsius}, Fahrenheit: ${temp.fahrenheit}');
  temp.celsius = -300;
  print('Celsius: ${temp.celsius}, Fahrenheit: ${temp.fahrenheit}');
}
