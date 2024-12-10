import 'dart:io';
void main() {

  // Erstelle eine leere Datenstruktur, um Benutzerinformationen zu speichern.
   Map<String, String> benutzerDaten = {};
  // Tipp: Verwende eine Map<String, String> zur Speicherung von Email und Passwort.
  // Fordere den Benutzer auf, nacheinander seine Registrierungsdaten einzugeben (Email, Passwort).
  print ("Registrierung:");
  print("Geben Sie Ihre Email ein: ");

  String email = stdin.readLineSync()!; 

  print ("Geben Sie Ihr Password ein: ");
  String passwort = stdin.readLineSync()!;

  benutzerDaten[email] = passwort;
  print ("Regestrierung abgeschlossen! Sie können sich jetzt einloggen.");

print ("Login:");
print("Email:");
String? loginEmail = stdin.readLineSync();

print("passwort:");
String? loginPasswort = stdin.readLineSync();

 if (benutzerDaten.containsKey(loginEmail) && benutzerDaten[loginEmail] == loginPasswort) {
    print("Willkommen zurück, $loginEmail!");
  } else {
    print("Fehler: Ungültige Email oder Passwort.");
}
  // Speichere die Email und das Passwort in der Map.
  // Fordere den Benutzer auf, sich nacheinander mit seiner Email und seinem Passwort einzuloggen.
  // Überprüfe, ob das eingegebene Passwort mit dem gespeicherten Passwort übereinstimmt.
  
    // Wenn korrekt, gib eine Willkommensnachricht aus.
    
    // Andernfalls gib eine Fehlermeldung aus.
 }
