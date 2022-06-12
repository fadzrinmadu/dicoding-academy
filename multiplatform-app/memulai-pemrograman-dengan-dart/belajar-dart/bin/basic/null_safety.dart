void main() {
  int age = null;               // Compile error
  String? favoriteFood = null;

  buyAMeal(favoriteFood!);
}

void buyAMeal(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}

// Dengan null safety,
// secara default sebuah variabel tidak bisa memiliki nilai null,
// kecuali kita mendeklarasikannya secara eksplisit.