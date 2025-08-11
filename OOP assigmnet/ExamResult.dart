class ExamResult {
  String _studentName = '';
  double _score = 0;

  ExamResult();

  set studentName(String value) {
    if (value.trim().isNotEmpty) {
      _studentName = value;
    } else {
      print('Name cannot be empty');
    }
  }

  set score(double value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print('Score must be between 0 and 100');
    }
  }

  String get grade {
    if (_score >= 85) return 'Excellent';
    if (_score >= 65) return 'Good';
    return 'Weak';
  }
}

void main() {
  ExamResult result = ExamResult();
  result.studentName = 'Ali';
  result.score = 90;
  print('${result.grade}');

  result.score = 70;
  print('${result.grade}');

  result.score = 50;
  print('${result.grade}');

  result.score = -10;
  result.studentName = "   ";
}
