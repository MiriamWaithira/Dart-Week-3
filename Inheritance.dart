// The superclass is Laptop and the subclasses are Dell and Hp
// The subclasses will inherit 'processor' and 'generation' attributes from the superclass.


class Laptop {
  //attributes
  String name;
  String processor;
  int generation;

  // Constructor to take the parameters and initialize the class attributes
  Laptop(this.name, this.processor, this.generation);

  //method/function to print the details
  void displayInfo() {
    print("Laptop Name: $name");
    print("Processor: $processor");
    print("Generation: $generation");
  }
}

//Dell Subclass
class Dell extends Laptop { //Dell inherits from Laptop class
  // Constructor for Dell using 'this' to refer to parameters
  Dell(String processor, int generation) : super("Dell", processor, generation);
}
//Hp Subclass
class HP extends Laptop { //Hp inherits from Laptop class
  // Constructor for HP
  HP(String processor, int generation)
      : super("HP", processor, generation);
}

void main() {
  Dell dellLaptop = Dell("Intel Core i7", 11);//create and initialize dellLaptop objects
  HP hpLaptop = HP("AMD Ryzen 5", 5);//create and initialize HpLaptop objects
  
  dellLaptop.displayInfo();// calling the function
  print(""); // Just for spacing
  hpLaptop.displayInfo(); //calling the function
}