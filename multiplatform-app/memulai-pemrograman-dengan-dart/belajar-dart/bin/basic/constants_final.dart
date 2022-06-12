void main() {
  const piDouble = 3.14;

  const num piNum = 3.14;

  final firstName = stdin.readLineSync();
  final lastName = stdin.readLineSync();

  //  lastName = 'Dart'; Tidak bisa mengubah nilai

  print('Hello $firstName $lastName');
}

/*
  catatan :
    Jadi kapan kita harus menggunakan const dan kapan final?
      - Kapan pun memungkinkan, selalu gunakan const karena compile-time constant memiliki performa yang lebih baik
      - dan menggunakan memori lebih sedikit.
      - Jika tidak memungkinkan untuk menggunakan const,
      - gunakan final untuk melindungi variabel agar tidak berubah.
*/