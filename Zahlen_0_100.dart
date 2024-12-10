import 'dart:io'; // Importiert die Bibliothek für Eingabe/Ausgabe-Operationen, z. B. Benutzereingaben von der Konsole.
void main() {
  int zahl; // Deklariert eine Variable namens `zahl`, die eine Ganzzahl (integer) speichert.
  do {
    // Beginnt eine do-while-Schleife, die mindestens einmal ausgeführt wird.
    print('Bitte eine Zahl eingeben:');
    // Gibt eine Nachricht in der Konsole aus, um den Benutzer aufzufordern, eine Zahl einzugeben.
    String eingabe = stdin.readLineSync()!;
    // Liest die Benutzereingabe als String ein.
    // Das `!` signalisiert, dass wir sicher sind, dass die Eingabe nicht `null` ist.
    zahl = int.parse(eingabe);
    // Wandelt den eingegebenen String in eine Ganzzahl (int) um und speichert sie in der Variable `zahl`.
    if (zahl < 0) {
      // Prüft, ob die eingegebene Zahl negativ ist.
      print('Bitte positive Zahl eingeben!');
      // Gibt eine Fehlermeldung aus, wenn die Zahl negativ ist.
    } else if (zahl == 0) {
      // Prüft, ob die eingegebene Zahl gleich 0 ist.
      print('Null ist nicht erlaubt!');
      // Gibt eine Fehlermeldung aus, wenn die Zahl 0 ist.
    } else {
      // Wenn die Zahl weder negativ noch 0 ist, ist sie positiv.
      print('Danke! $zahl ist positiv.');
      // Gibt eine Bestätigung aus, dass die Zahl positiv ist, und zeigt die eingegebene Zahl an.
    }
  } while (zahl <= 0);
  // Wiederholt die Schleife, solange die Zahl kleiner oder gleich 0 ist.
  // Sobald eine positive Zahl eingegeben wurde, wird die Schleife beendet.
}