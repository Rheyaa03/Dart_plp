// --- Encapsulation ---
class BankAccount {
  // private variable
  double _balance = 0;

  // getter method
  double get balance => _balance;

  // setter method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }
}

// --- Abstraction ---
abstract class Animal {
  void makeSound(); // abstract method
}

// --- Inheritance + Polymorphism ---
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog says: Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat says: Meow!");
  }
}

void main() {
  // Encapsulation
  BankAccount myAccount = BankAccount();
  myAccount.deposit(500);
  myAccount.withdraw(200);
  print("Current balance: ${myAccount.balance}");

  // Polymorphism with abstract class
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.makeSound(); // different behavior depending on subclass
  }
}
