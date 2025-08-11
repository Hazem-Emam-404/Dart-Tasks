class Student {
  double _mark = 0;

  Student();

  set mark(double value) {
    if (value >= 0 && value <= 100) {
      _mark = value;
    } else {
      print('Invalid mark');
    }
  }

  String get result => _mark >= 50 ? 'Pass' : 'Fail';
}

void main() {
  Student s = Student();
  s.mark = 75;
  print('Result: ${s.result}');
  s.mark = 40;
  print('Result: ${s.result}');
  s.mark = 110;
  print('Result: ${s.result}');
}
