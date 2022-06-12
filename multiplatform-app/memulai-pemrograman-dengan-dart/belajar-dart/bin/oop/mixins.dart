mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}

class Cat extends Mammal with Walkable { }

class Duck extends Bird with Walkable, Flyable, Swimmable { }

void main() {
  var donald = Duck();
  var garfield = Cat();

  garfield.walk();

  donald.walk();
  donald.swim();
}


mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}