void main() {
  greet('Dicoding', 2015);  // output : Halo Dicoding! Tahun ini Anda berusia 5 tahun

  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');

}

void greet(String name, bornYear) {
  var age = 2020 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

/*
*
* double average(num num1, num num2) => (num1 + num2) / 2;
* void greeting() => print('Hello');
*
* */

// optional properties
// void greetNewUser([String name, int age, bool isVerified])
// greetNewUser('Widy', 20, true);
// greetNewUser('Widy', 20);
// greetNewUser('Widy');
// greetNewUser();

// null safety
// void greetNewUser([String? name, int? age, bool isVerified = false]) {}
// greetNewUser(null, null, true);

// named optional parameter
// void greetNewUser({String name, int age, bool isVerified})
// greetNewUser(name: 'Widy', age: 20, isVerified: true);
// greetNewUser(name: 'Widy', age: 20);
// greetNewUser(age: 20);
// greetNewUser(isVerified: true);

// void greetNewUser({required String name, required int age, bool isVerified = false}) {}