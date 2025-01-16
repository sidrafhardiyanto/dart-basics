import 'dart:io';  
  
void main() {  
  print("Usia legal untuk memilih di Indonesia adalah 17 tahun ke atas");

  // Meminta input usia dari pengguna  
  stdout.write('Masukkan usia Anda: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? age = int.tryParse(input);  
  
    if (age != null) {  
      // Menentukan kelayakan untuk memilih  
      if (age >= 17) {  
        print('Anda memenuhi syarat untuk memilih.');  
      } else {  
        print('Anda belum memenuhi syarat untuk memilih.');  
      }  
    } else {  
      print('Masukkan usia yang valid.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
