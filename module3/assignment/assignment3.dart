class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}


void main() {
  Car car1 = Car('Toyota', 'Camry', 2020, 10000);
  Car car2 = Car('Honda', 'Civic', 2018, 8000);
  Car car3 = Car('Ford', 'F-150', 2015, 15000);

  car1.drive(1000);
  car2.drive(2000);
  car3.drive(3000);

  print('Car 1: ${car1.brand} ${car1.model} ${car1.year} Miles: ${car1.getMilesDriven()} Age: ${car1.getAge()}');
  print('Car 2: ${car2.brand} ${car2.model} ${car2.year} Miles: ${car2.getMilesDriven()} Age: ${car2.getAge()}');
  print('Car 3: ${car3.brand} ${car3.model} ${car3.year} Miles: ${car3.getMilesDriven()} Age: ${car3.getAge()}');

  print('Total number of cars created: ${Car.numberOfCars}');
}
