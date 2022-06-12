void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));
}

// Opsi 1
Function sum = (int num1, int num2) => num1 + num2;
myHigherOrderFunction('Hello', sum);


// Opsi 2
myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

void myHigherOrderFunction(String message, int Function(int num1, int num2) myFunction) { }