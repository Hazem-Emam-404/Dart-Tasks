class Product {
  String _name = '';
  double _price = 0;

  Product();

  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value;
    } else {
      print('Name cannot be empty');
    }
  }

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print('Price must be greater than zero');
    }
  }

  String get description => 'Name: $_name — Price: $_price Y';
}

void main() {
  Product p = Product();
  p.name = 'Laptop';
  p.price = 15000;
  print(p.description);

  p.name = '';
  p.price = -50;
  print(p.description);
}
