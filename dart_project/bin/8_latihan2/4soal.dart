import 'dart:io';  
import 'dart:math';  
  
void main() {  
  // Menghasilkan angka acak antara 1 dan 10  
  Random random = Random();  
  int targetNumber = random.nextInt(10) + 1; // Angka antara 1 dan 10  
  int guess;  
    
  print('Tebak angka antara 1 sampai 10:');  
  
  do {  
    // Meminta input tebakan dari pengguna  
    stdout.write('Masukkan tebakan Anda: ');  
    String? input = stdin.readLineSync();  
  
    // Memastikan input tidak null dan dapat dikonversi menjadi integer  
    if (input != null) {  
      guess = int.tryParse(input) ?? 0; // Mengonversi input menjadi integer  
  
      if (guess < 1 || guess > 10) {  
        print('Tebakan harus antara 1 dan 10. Coba lagi.');  
      } else if (guess < targetNumber) {  
        print('Tebakan Anda terlalu rendah. Coba lagi.');  
      } else if (guess > targetNumber) {  
        print('Tebakan Anda terlalu tinggi. Coba lagi.');  
      }  
    } else {  
      print('Input tidak boleh kosong.');  
      guess = 0; // Set guess ke 0 untuk melanjutkan perulangan  
    }  
  } while (guess != targetNumber);  
  
  print('Selamat! Anda telah menebak angka yang benar: $targetNumber');  
}  
