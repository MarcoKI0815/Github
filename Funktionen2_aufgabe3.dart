String concat(String first, String second) {
  return '$first$second';
}

void main() {
  print(concat("Hallo", " Welt"));   // Ausgabe: Hallo Welt
  print(concat("Dart", " Code"));   // Ausgabe: Dart Code
  print(concat("123", "456"));      // Ausgabe: 123456
}