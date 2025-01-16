import 'dart:io';  
  
void main() {  
  // Meminta input hari dari pengguna  
  stdout.write('Masukkan hari dalam seminggu (Senin, Selasa, Rabu, Kamis, Jumat, Sabtu, Minggu): ');  
  String? input = stdin.readLineSync();  
  
  // Memastikan input tidak null  
  if (input != null) {  
    // Mengubah input menjadi huruf kapital untuk memudahkan perbandingan  
    String day = input.trim().toLowerCase();  
  
    // Menggunakan switch-case untuk menentukan apakah hari kerja atau akhir pekan  
    switch (day) {  
      case 'senin':  
      case 'selasa':  
      case 'rabu':  
      case 'kamis':  
      case 'jumat':  
        print('$input adalah hari kerja.');  
        break;  
      case 'sabtu':  
      case 'minggu':  
        print('$input adalah akhir pekan.');  
        break;  
      default:  
        print('Hari tidak valid. Silakan masukkan hari yang benar.');  
    }  
  } else {  
    print('Input tidak boleh kosong.');  
  }  
}  
