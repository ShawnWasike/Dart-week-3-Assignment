// Encapsulation: Base class with private data and controlled access
class User {
  // Private variable: encapsulated data
  String _name;
  int _age;

  // Constructor
  User(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String newName) {
    _name = newName;
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print('Age cannot be negative.');
    }
  }

  // Method to display user info
  void displayUserInfo() {
    print('Name: $_name, Age: $_age');
  }
}

// Inheritance: Subclass inheriting from User class
class Admin extends User {
  String _role;

  // Constructor for Admin class
  Admin(String name, int age, this._role) : super(name, age);

  // Method to display admin info
  void displayAdminInfo() {
    print('Admin Info - Name: $name, Age: $age, Role: $_role');
  }
}

// Abstraction: Abstract class with abstract method
abstract class Payment {
  void makePayment(double amount);  // Abstract method

  void showPaymentMethod() {
    print('Payment method is being used.');
  }
}

// Polymorphism: Subclasses implementing different versions of abstract method
class CreditCardPayment extends Payment {
  @override
  void makePayment(double amount) {
    print('Credit card payment of \$${amount.toStringAsFixed(2)} has been processed.');
  }
}

class PayPalPayment extends Payment {
  @override
  void makePayment(double amount) {
    print('PayPal payment of \$${amount.toStringAsFixed(2)} has been processed.');
  }
}

void main() {
  // Encapsulation: Creating and managing User object
  User user1 = User('Alice', 30);
  user1.displayUserInfo();
  
  // Modifying private data through setters
  user1.name = 'Bob';
  user1.age = 25;
  user1.displayUserInfo();

  // Inheritance: Creating Admin object and displaying info
  Admin admin1 = Admin('Charlie', 40, 'Super Admin');
  admin1.displayAdminInfo();

  // Abstraction and Polymorphism: Demonstrating different payment methods
  Payment payment1 = CreditCardPayment();
  payment1.makePayment(100.00);  // Uses CreditCardPayment version
  
  Payment payment2 = PayPalPayment();
  payment2.makePayment(50.75);  // Uses PayPalPayment version
}
