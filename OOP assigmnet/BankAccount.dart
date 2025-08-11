class BankAccount {
  double _balance = 0;

  BankAccount();

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Balance cannot be negative');
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Deposit amount must be positive');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient balance or invalid amount');
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(500);
  print("balance: ${account.balance}");
  account.withdraw(200);
  print("balance: ${account.balance}");
  account.deposit(-200);
  account.withdraw(400);
  print("balance: ${account.balance}");
}
