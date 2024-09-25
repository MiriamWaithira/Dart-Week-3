// The subclasses have their unique way to implement a common method
// The same method calculateSpeed behaves differently for different subclasses based on their unique characteristics (time to cover the same distance).

abstract class Vehicle { //abstract class
  //abstract method/function to calculate speed(distance/ time)
  double calculateSpeed(double distance, double time);

  //method/function used to display the speed of the vehicle
  void displaySpeed(double distance, double time) {
    double speed = calculateSpeed(distance, time);
    print('The speed of this vehicle is ${speed.toStringAsFixed(2)} km/h');
  }
}

//Subclass for Car
class Car extends Vehicle {
  @override
  double calculateSpeed(double distance, double time) {
    return distance / time; //calculate the speed
  }
}

//Subclass for Bicycle
class Bicycle extends Vehicle {
  @override
  double calculateSpeed(double distance, double time) {
    return distance / time; //calculate the speed of the bicycle
  }
}

//The Main Function
void main() {
  double distance = 100.0; //this distance is same for both car and bicycle

  Vehicle car = Car();
  print('Car:');
  car.displaySpeed(distance, 1.5); //the car takes 1.5 hours

  print(''); //for spacing

  Vehicle bicycle = Bicycle();
  print('Bicycle:');
  bicycle.displaySpeed(distance, 5.0); //the bicycle takes 5.0 hours
}