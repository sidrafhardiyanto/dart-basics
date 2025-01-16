void main() {  
  // Menginisialisasi daftar dengan beberapa kata  
  List<String> words = ['apel', 'jeruk', 'pisang', 'mangga', 'kiwi'];  
  
  // Mengulangi melalui daftar kata dan mencetak setiap kata beserta panjangnya  
  print('Daftar kata dan panjangnya:');  
  for (var word in words) {  
    print('Kata: $word, Panjang: ${word.length}');  
  }  
}  
