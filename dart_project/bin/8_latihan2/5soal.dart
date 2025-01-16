void main() {  
  // Menginisialisasi daftar dengan beberapa nilai  
  List<String> items = ['apel', 'jeruk', 'pisang', 'mangga', 'kiwi'];  
  
  // Mencetak elemen-elemen dari daftar dalam urutan terbalik  
  print('Elemen-elemen dalam urutan terbalik:');  
  for (var item in items.reversed) {  
    print(item);  
  }  
}  
