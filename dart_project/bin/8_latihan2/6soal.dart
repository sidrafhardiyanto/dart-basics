import 'dart:io';  
  
void main() {  
  // Meminta input tahun dari pengguna  
  stdout.write('Masukkan tahun: ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null dan dapat dikonversi menjadi integer  
  if (input != null) {  
    int? year = int.tryParse(input);  
  
    if (year != null) {  
      // Memeriksa apakah tahun tersebut adalah tahun kabisat  
      if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {  
        print('$year adalah tahun kabisat.');  
      } else {  
        print('$year bukan tahun kabisat.');  
      }  
    } else {  
      print('Masukkan tahun yang valid.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
