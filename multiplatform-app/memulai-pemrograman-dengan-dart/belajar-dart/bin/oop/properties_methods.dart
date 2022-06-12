// class Animal {
//   String _name = '';
//   int _age = 0;
//   double _weight = 0;
//
//   // Setter
//   set name(String value) {
//     _name = value;
//   }
//
//   // Getter
//   double get weight => _weight;
//
//   void eat() {
//     print('$_name is eating.');
//     _weight = _weight + 0.2;
//   }
//
//   void poop() {
//     print('$_name is pooping.');
//     _weight = _weight - 0.1;
//   }
// }

import 'Animal.dart';

void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();
  print(dicodingCat.weight);
}