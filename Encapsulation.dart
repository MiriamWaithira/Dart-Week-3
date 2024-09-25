// The class BankAccount will encapsulate data related to a bank account.
// It will also ensure sensitive data like the balance is kept private.

class BankAccount {
  //the private variable
  double _balance;

  //constructor used to initilalize the object with an initial balance
  BankAccount(this._balance);//this initializes the private variable with the passed value

  //Using Getter for the balance- used to update the balance
  double get balance => _balance;

  //The method/function used to deposit the money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount; //adds the amount input to the balance
      print('Deposited: \$${amount}');
    } else {
      print('Invalid deposit amount');
    }
  }

  //The method/function to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount; //subtracts the suggested withdrawal amount from the balance available
      print('Withdraw: \$${amount}');
    } else {
      print('Invalid withdraw amount, insufficient funds!!');
    }
  }
}
//The Main function
void main() {
  BankAccount account = BankAccount(1000.00); //initial balance
  account.deposit(500.00); //added to the balance
  account.withdraw(700.00); //subtracted from the balance
  print('Current Balance: \$${account.balance}'); //the final balance will be printed from the 'balance' getter
}