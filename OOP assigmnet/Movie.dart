class Movie {
  String _title = '';
  double _rating = 0;

  Movie();

  set title(String value) {
    if (value.trim().isNotEmpty) {
      _title = value;
    } else {
      print('Title cannot be empty');
    }
  }

  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    } else {
      print('Rating must be between 0 and 10');
    }
  }

  String get description => 'The movie $_title got a rating of $_rating/10';
}

void main() {
  Movie m = Movie();
  m.title = 'Inception';
  m.rating = 8.8;
  print(m.description);

  m.title = '';
  m.rating = 12;
  print(m.description);
}
