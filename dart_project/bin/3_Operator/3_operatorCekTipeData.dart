void main(List<String> args) {
  int seket = 50;

  print(seket is int); // true karena seket bertipe int
  print(seket is double); // false karena seket bertipe int
  print(seket is String); // false karena seket bertipe int

  String seketTapiString = '50';

  print(seketTapiString is int); // true karena seket bertipe int
  print(seketTapiString is double); // false karena seket bertipe int
  print(seketTapiString is String); // false karena seket bertipe int

}