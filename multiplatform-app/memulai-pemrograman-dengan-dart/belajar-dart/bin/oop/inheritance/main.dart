import 'Cat.dart';

void main() {
  var dicodingCat = Cat('Grayson', 2, 2.2, 'Gray');
  dicodingCat.walk();
  dicodingCat.eat();
  print(dicodingCat.weight);
}

/*
Output :
  Grayson is walking
  Grayson is eating.
  2.4000000000000004
 */