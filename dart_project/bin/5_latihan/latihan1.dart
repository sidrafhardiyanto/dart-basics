import 'dart:io';

void main(List<String> args) {
  print('1. Buat program untuk mencetak nama Anda di Dart.');
  String namaSaya = 'Sidra Febrian Hardiyanto';
  print(namaSaya);

  print('2. Tulis program untuk mencetak Hello, saya "John Doe" dan Hello, saya "John Doe" dengan tanda kutip tunggal dan ganda. Untuk nama gunakan inputan dari pengguna.');
    // Meminta input nama dari pengguna  
  print('Masukkan nama Anda: ');  
  String? name = stdin.readLineSync();  
  
  // Memastikan input tidak null  
  if (name != null) {
    print('Hello, saya "$name"'"Hello, saya '$name'");  
  } else {  
    print('Nama tidak boleh kosong.');  
  }  

  print('3. Deklarasikan konstanta dengan tipe int dan beri nilai 7.');
  int angka = 7;
  print(angka);
  print(angka is int);

  print('4. Tulis program dalam Dart yang menemukan bunga sederhana. Rumus= (p * t * r) / 100.');

  print('Masukkan nilai p:');
  double p = double.parse(stdin.readLineSync()!);

  print('Masukkan nilai t:');
  double t = double.parse(stdin.readLineSync()!);

  print('Masukkan nilai r:');
  double r = double.parse(stdin.readLineSync()!);

  double rumus = (p * t * r) / 100;
  print('Bunga sederhana adalah: $rumus');

  print('5. Buat program untuk mencetak persegi dari suatu angka menggunakan input pengguna.');

  // Meminta input angka dari pengguna  
  stdout.write('Masukkan angka untuk ukuran persegi: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? size = int.tryParse(input);  
  
    if (size != null && size > 0) {  
      // Mencetak persegi dengan simbol $  
      for (int i = 0; i < size; i++) {  
        for (int j = 0; j < size; j++) {  
          stdout.write('\$  ');  
        }  
        print(''); // Pindah ke baris berikutnya setelah satu baris selesai  
      }  
    } else {  
      print('Masukkan angka yang valid dan lebih besar dari 0.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }   

  print("6. Buat program untuk mencetak nama lengkap berdasarkan nama depan dan nama belakang menggunakan input pengguna.");

  // Meminta input nama depan dan belakang dari pengguna  
  stdout.write('Masukkan nama depan: ');  
  String? firstName = stdin.readLineSync();  
  stdout.write('Masukkan nama tengah: ');
  String? middleName = stdin.readLineSync();
  stdout.write('Masukkan nama belakang: ');  
  String? lastName = stdin.readLineSync();  
  
  // Memastikan input tidak null  
  if (firstName != null && lastName != null) {  
    String fullName = '$firstName $middleName $lastName';  
    print('Nama lengkap Anda adalah: $fullName');  
  } else {  
    print('Nama depan dan belakang tidak boleh kosong. Jika tidak punya nama belakang, ulangi nama depan Anda.');  
  }

  print("7. Buat program untuk menemukan hasil bagi dan sisa dari dua bilangan bulat.");

  stdout.write('Masukkan bilangan pertama: ');
  int? bilangan1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan bilangan kedua: ');
  int? bilangan2 = int.parse(stdin.readLineSync()!);

    int hasilBagi = bilangan1 ~/ bilangan2;
    int sisaBagi = bilangan1 % bilangan2;
    print('Hasil bagi: $hasilBagi');
    print('Sisa bagi: $sisaBagi');

  print("8.Buat program untuk menukar dua bilangan.");

  stdout.write('Masukkan bilangan pertama: ');
  int? bilanganPertama = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan bilangan kedua: ');
  int? bilanganKedua = int.parse(stdin.readLineSync()!);

  int temp = bilanganPertama;
  bilanganPertama = bilanganKedua;
  bilanganKedua = temp;

  print('Bilangan pertama: $bilanganPertama');
  print('Bilangan kedua: $bilanganKedua');

  print("9. Tulis program di Dart untuk menghapus semua spasi dari String.");

  String kalimat = "LU    BISA  HAPUS   INI    SEPASI      KAGAK?";
  print(kalimat);
  String kalimatTanpaSpasi = kalimat.replaceAll(' ', '');
  print(kalimatTanpaSpasi);

  print("10. Tulis program Dart untuk mengonversi String menjadi int.");

  String hargaPaket3h2mJava = "2245000";
  int stringJadiInt = int.parse(hargaPaket3h2mJava);
  print(stringJadiInt);

  print("11. Misalkan, Anda sering pergi ke restoran dengan teman-teman dan harus membagi jumlah tagihan. Tulis program untuk menghitung jumlah pembagian tagihan. Rumus= (total jumlah tagihan) / jumlah orang.");

  stdout.write('Masukkan jumlah tagihan: ');
  double jumlahTagihan = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan jumlah orang: ');
  int jumlahOrang = int.parse(stdin.readLineSync()!);

  double pembagianTagihan = jumlahTagihan / jumlahOrang;
  print('Jumlah pembagian tagihan: $pembagianTagihan');

}