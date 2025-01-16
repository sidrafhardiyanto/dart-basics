import 'dart:io';  
  
void main() {  
  // Meminta input angka dari pengguna  
  stdout.write('Masukkan sebuah angka: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? number = int.tryParse(input);  
  
    if (number != null) {  
      // Menghitung jumlah digit menggunakan perulangan while  
      int count = 0;  
      int temp = number.abs(); // Menggunakan nilai absolut untuk menghindari masalah dengan angka negatif  
  
      while (temp > 0) {  
        temp ~/= 10; // Menghapus digit terakhir  
        count++; // Menambah jumlah digit  
      }  
  
      // Jika angka adalah 0, jumlah digitnya adalah 1  
      if (number == 0) {  
        count = 1;  
      }  
  
      print('Jumlah digit dari $number adalah $count.');  
    } else {  
      print('Masukkan angka yang valid.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
