import 'dart:io';

void main() {
  print("Masukkan nama:");
  String? nama  = stdin.readLineSync();
  print("Nama anda adalah ${nama}");

  print("Masukkan bilangan bulat:");
  int? angka = int.parse(stdin.readLineSync()!);
  print("Bilangan yang anda masukkan ${angka}");

  print("Masukkan bilangan desimal:");
  double angkaDesimal = double.parse(stdin.readLineSync()!);
  print("Bilangan yang anda masukkan $angkaDesimal");

}