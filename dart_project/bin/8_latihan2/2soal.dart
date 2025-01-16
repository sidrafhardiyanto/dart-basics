import 'dart:io';  
  
void main() {  
  print("Ini adalah program untuk mengecek apakah suatua angka positif atau negatif");

  // Meminta input angka dari pengguna  
  stdout.write('Masukkan sebuah angka: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? number = int.tryParse(input);  
  
    if (number != null) {  
      // Menggunakan switch-case untuk menentukan jenis angka  
      switch (number.sign) {  
        case 1:  
          print('Angka tersebut adalah positif.');  
          break;  
        case -1:  
          print('Angka tersebut adalah negatif.');  
          break;  
        case 0:  
          print('Angka tersebut adalah nol.');  
          break;  
        default:  
          print('Terjadi kesalahan.');  
      }  
    } else {  
      print('Masukkan angka yang valid.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
