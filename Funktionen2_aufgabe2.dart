bool isPositive(num number) {
  return number > 0;
}

void main() {
  print(isPositive(5));    // Ausgabe: true
  print(isPositive(0));    // Ausgabe: false
  print(isPositive(-3));   // Ausgabe: false
}