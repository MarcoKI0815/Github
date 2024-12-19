import 'dart:io'; // Für Benutzereingaben und Konsolenausgaben

// Hauptfunktion der App
void main() {
  FitLoverApp app = FitLoverApp(); // Erstelle ein App-Objekt
  app.start(); // Starte die App
}

// Klasse: Hauptklasse der App
class FitLoverApp {
  // Benutzer- und Trainingsplan-Objekte
  Benutzer? benutzer;
  Trainingsplan trainingsplan = Trainingsplan();

  // Methode: Startet die App
  void start() {
    while (true) {
      printHauptmenu(); // Zeige Hauptmenü
      String? auswahl = _getUserInput("Wähle eine Option (1-5):");

      // Verarbeite Benutzereingabe
      switch (auswahl) {
        case '1':
          _benutzerErstellen();
          break;
        case '2':
          _zeigeBenutzerDetails();
          break;
        case '3':
          trainingsplan.fitnessPlanErstellen();
          break;
        case '4':
          trainingsplan.zeigeFitnessPlan();
          break;
        case '5':
          print("Danke, dass du die FitLover-App genutzt hast. Bis bald!");
          return; // Beende die App
        default:
          print("Ungültige Auswahl. Bitte erneut versuchen.");
      }
    }
  }

  // Methode: Zeigt das Hauptmenü an
  void printHauptmenu() {
    print("\n*** FitLover App - Hauptmenü ***");
    print("1. Benutzerprofil erstellen");
    print("2. Benutzerprofil anzeigen");
    print("3. Fitnessplan erstellen");
    print("4. Fitnessplan anzeigen");
    print("5. App beenden");
  }

  // Methode: Erstellt einen neuen Benutzer
  void benutzerErstellen() {
    print("\n--- Benutzerprofil erstellen ---");
    String name = _getUserInput("Gib deinen Namen ein:")!;
    int alter = int.parse(_getUserInput("Gib dein Alter ein:")!);
    String niveau = _getUserInput("Gib dein Fitnessniveau ein (Anfänger, Fortgeschritten, Profi):")!;
    String ziel = _getUserInput("Gib dein Fitnessziel ein (Muskelaufbau, Abnehmen):")!;
    String equipment = _getUserInput("Verfügbares Equipment (Zuhause, Gym, Geräte):")!;
    benutzer = Benutzer(
      name: name,
      alter: alter,
      niveau: niveau,
      ziel: ziel,
      equipment: equipment,
    );
    print("Benutzerprofil erfolgreich erstellt!");
  }

  // Methode: Zeigt Benutzerprofil, falls vorhanden
  void zeigeBenutzerDetails() {
    if (benutzer == null) {
      print("Kein Benutzerprofil vorhanden. Bitte erstelle ein Profil (Option 1).");
    } else {
      benutzer!.zeigeBenutzerDetails();
    }
  }

  // Methode: Hilfsfunktion zum Abrufen von Benutzereingaben
  String? getUserInput(String prompt) {
    stdout.write(prompt);
    return stdin.readLineSync();
  }
}