import 'dart:io';  
import 'dart:math';  
  
void main() {  
  // Menghasilkan angka acak antara 1 dan 100  
  Random random = Random();  
  int targetNumber = random.nextInt(100) + 1; // Angka antara 1 dan 100  
  int guess;  
    
  print('Selamat datang di permainan menebak angka!');  
  print('Saya telah memilih angka antara 1 dan 100. Coba tebak!');  
  
  do {  
    // Meminta input tebakan dari pengguna  
    stdout.write('Masukkan tebakan Anda: ');  
    String? input = stdin.readLineSync();  
  
    // Memastikan input tidak null dan dapat dikonversi menjadi integer  
    if (input != null) {  
      guess = int.tryParse(input) ?? 0; // Mengonversi input menjadi integer  
  
      if (guess < 1 || guess > 100) {  
        print('Tebakan harus antara 1 dan 100. Coba lagi.');  
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
