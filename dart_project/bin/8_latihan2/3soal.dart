import 'dart:io';  
  
void main() {  
  // Meminta input angka dari pengguna  
  stdout.write('Masukkan sebuah angka untuk menghitung faktorial: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? number = int.tryParse(input);  
  
    if (number != null && number >= 0) {  
      int factorial = 1;  
      int i = 1;  
  
      // Menghitung faktorial menggunakan perulangan while  
      while (i <= number) {  
        factorial *= i;  
        i++;  
      }  
  
      print('Faktorial dari $number adalah $factorial.');  
    } else {  
      print('Masukkan angka yang valid dan tidak negatif.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
