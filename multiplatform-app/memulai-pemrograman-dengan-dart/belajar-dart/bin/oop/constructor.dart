Animal(String name, int age, double weight) {
  this.name = name;
  this.age = age;
  this.weight = weight;
  // other instructions
}

var dicodingCat = Animal();
dicodingCat.name = 'Gray';
dicodingCat.age = 2;
dicodingCat.weight = 4.2;


// catatan
// Jika constructor hanya digunakan untuk menginisialisasi nilai properti,
Animal(this.name, this.age, this.weight);

// named costructor
Class Animal {
  // ...
  Animal.Name(this._name);
  Animal.Age(this._age);
  Animal.Weight(this._weight);
  // ...
}