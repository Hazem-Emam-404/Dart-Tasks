class Book {
  String _title = "";

  set title(String title) {
    if (title.isNotEmpty)
      _title = title;
    else
      print("the title mustn't be empty");
  }

  String get title => _title;
}

void main() {
  Book b1 = Book();
  b1.title = "book 1";
  print(b1.title);
  b1.title = "";
  print(b1.title);
}
