class Car {
  double _speed;

  Car(double speed): _speed = speed;

  set speed(double speed) {
    if (speed >= 0 && speed <= 300) {
      this._speed = speed;
    } else {
      print("the speed must be between 0 and 300");
    }
  }

  double get speed => _speed;
}

void main() {
  Car c1 = Car(200);
  print("car speed is: ${c1.speed}");
  c1.speed = 350;
  print("car speed is: ${c1.speed}");
  c1.speed = -10;
  print("car speed is: ${c1.speed}");
  c1.speed = 150;
  print("car speed is: ${c1.speed}");
}
