void addAndPrint(int zahl1, int zahl2) {
  // Addiere die beiden Zahlen
  int summe = zahl1 + zahl2;
  // Gib die Summe aus
  print('Die Summe von $zahl1 und $zahl2 ist: $summe');
}

void multiplyAndPrint(int zahl1, int zahl2) {
  // Multipliziere die beiden Zahlen
  int ergebnis = zahl1 * zahl2;
  // Gib das Ergebnis aus
  print('Das Ergebnis der Multiplikation von $zahl1 und $zahl2 ist: $ergebnis');
}

void main() {
  // Zwei Zahlen, die addiert und multipliziert werden sollen
  int zahl1 = 6;
  int zahl2 = 7;

  // Addition und Ausgabe
  addAndPrint(zahl1, zahl2);

  // Multiplikation und Ausgabe
  multiplyAndPrint(zahl1, zahl2);
}