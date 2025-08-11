class PasswordManager {
  String _password = '';

  PasswordManager();

  set password(String value) {
    if (value.length >= 6) {
      _password = value;
    } else {
      print('Password must be at least 6 characters long');
    }
  }

  String get password => '*'*_password.length;
}

void main() {
  PasswordManager p = PasswordManager();
  p.password = '12345';
  print(p.password);

  p.password = 'secure123';
  print(p.password);
}
