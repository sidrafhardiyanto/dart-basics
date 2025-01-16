void main() {
  // Map merupakan kumpulan data dengan key dan value.
  // Jika kalian mengerti Javascript Object Notation (JSON), maka kalian akan lebih mudah memahami apa itu Map. Map merupakan pasangan kunci dan isi. Kunci dan isi tersebut biasa dipanggil dengan key dan value. Setiap key dan value dapat dideklarasikan tipe datanya.

    Map<String, dynamic> data = {
        'url': 'https://unisnu.ac.id/',
        'topic': 'Flutter Engineering',
    };
    print(data);
}
