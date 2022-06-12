import 'dart:io';

void main() {
  stdout.write('Nama Anda : ' );
  String name = stdin.readLineSync()!;

  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);

  print('Halo $name, usia Anda $age tahun');
}

/**
 * Catatan :
 * Perbedaan stdout.write dan print
 *  - print, mencetak baris baru setelah menampilkan sesuatu
 *  - stdout.write, hanya menampilkan object dan akan ditampilkan dibaris yang sama
 *
 * Fungsi tanda "!"
 *  - untuk menandai bahwa input tidak akan mengembalikkan nilai "null"
 */