stdout.write('Masukkan angka pertama : ');
var firstNumber = num.parse(stdin.readLineSync()!);
stdout.write('Masukkan operator [ + | - | * | / ] : ');
var operator = stdin.readLineSync();
stdout.write('Masukkan angka kedua : ');
var secondNumber = num.parse(stdin.readLineSync()!);

switch (operator) {
case '+':
print('$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
break;
case '-':
print('$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
break;
case '*':
print('$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
break;
case '/':
print('$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
break;
default:
print('Operator tidak ditemukan');
}