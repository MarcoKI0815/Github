import 'dart:io'; // Importiert die dart:io-Bibliothek für Benutzereingaben und Konsolenausgaben

// Hauptfunktion des Programms
void main() {
  // Eine Liste von verfügbaren Übungen
  List<String> exercises = ["Liegestütze", "Kniebeugen", "Plank", "Burpees"];
  
  // Eine leere Liste, um den Fitnessplan des Benutzers zu speichern
  List<String> fitnessPlan = [];

  // Unendliche Schleife für das Hauptmenü, bis der Benutzer die App beendet
  while (true) {
    printMainMenu(); // Zeigt das Hauptmenü an

    // Liest die Eingabe des Benutzers für die Menüauswahl
    String? choice = getUserInput("Wähle eine Option (1-4): ");

    // Validiert die Benutzereingabe (null oder leer ist ungültig)
    if (choice == null || choice.isEmpty) {
      print("Ungültige Eingabe. Bitte versuche es erneut."); // Fehlermeldung bei ungültiger Eingabe
      continue; // Springt zurück zum Anfang der Schleife
    }

    // Verarbeitet die Benutzereingabe basierend auf der Auswahl
    switch (choice) {
      case '1': // Zeigt die verfügbaren Übungen an
        showExercises(exercises, "Verfügbare Übungen");
        break;
      case '2': // Ermöglicht das Erstellen eines Fitnessplans
        fitnessPlan = createFitnessPlan(exercises);
        break;
      case '3': // Zeigt den aktuellen Fitnessplan des Benutzers an
        showExercises(fitnessPlan, "Dein Fitnessplan");
        break;
      case '4': // Beendet die App
        print("Danke, dass du die FitLover-App genutzt hast. Bis bald!");
        return; // Verlässt die `main`-Funktion und beendet das Programm
      default: // Fehlermeldung bei ungültiger Auswahl
        print("Ungültige Auswahl. Bitte versuche es erneut.");
    }
  }
}

// Funktion: Zeigt das Hauptmenü an
void printMainMenu() {
  print("\n*** FitLover App - Hauptmenü ***");
  print("1. Verfügbare Übungen anzeigen");
  print("2. Einen Fitnessplan erstellen");
  print("3. Fitnessplan anzeigen");
  print("4. App beenden");
}

// Funktion: Liest eine Eingabe vom Benutzer
String? getUserInput(String prompt) {
  stdout.write(prompt); // Zeigt den Eingabeaufforderungstext in der Konsole
  String? input = stdin.readLineSync(); // Liest die Benutzereingabe
  if (input == null || input.isEmpty) {
    print("Eingabe erforderlich!"); // Warnung, wenn die Eingabe leer ist
  }
  return input; // Gibt die Eingabe zurück
}

// Funktion: Zeigt eine Liste von Übungen oder den Fitnessplan an
void showExercises(List<String> exercises, String title) {
  print("\n--- $title ---"); // Überschrift (z. B. "Verfügbare Übungen")
  if (exercises.isEmpty) {
    print("Keine Einträge verfügbar."); // Nachricht, wenn die Liste leer ist
  } else {
    // Listet alle Elemente der Liste auf
    for (int i = 0; i < exercises.length; i++) {
      print("${i + 1}. ${exercises[i]}");
    }
  }
}

// Funktion: Erstellt einen Fitnessplan basierend auf Benutzereingaben
List<String> createFitnessPlan(List<String> exercises) {
  print("\n--- Fitnessplan erstellen ---");
  showExercises(exercises, "Verfügbare Übungen"); // Zeigt alle verfügbaren Übungen an

  // Liest die Auswahl des Benutzers
  String? input = getUserInput("Gib die Nummern der Übungen ein (z. B. 1,3): ");
  List<String> plan = []; // Liste für den Fitnessplan

  if (input != null && input.isNotEmpty) {
    // Trennt die Benutzereingabe in einzelne Nummern
    List<String> selectedIndices = input.split(',');
    for (String index in selectedIndices) {
      int idx = int.tryParse(index.trim()) ?? -1; // Konvertiert die Eingabe in eine Zahl
      if (idx > 0 && idx <= exercises.length) {
        plan.add(exercises[idx - 1]); // Fügt die entsprechende Übung zum Plan hinzu
      } else {
        print("Ungültige Auswahl: $index"); // Warnung bei ungültiger Nummer
      }
    }
    if (plan.isNotEmpty) {
      print("Dein Fitnessplan wurde erstellt!"); // Bestätigung bei Erfolg
    } else {
      print("Keine gültigen Übungen ausgewählt."); // Warnung bei leerem Plan
    }
  } else {
    print("Keine Eingabe erhalten."); // Warnung bei leerer Eingabe
  }

  return plan; // Gibt den erstellten Fitnessplan zurück
}

// Klasse: Benutzer
class Benutzer {
  String name;
  int alter;
  String niveau; // Anfänger, Fortgeschrittener, Profi
  String ziel; // Abnehmen, Muskelaufbau, Fitness halten
  String equipment; // Gym, Zuhause, Einfache Geräte

  Benutzer({
    required this.name,
    required this.alter,
    required this.niveau,
    required this.ziel,
    required this.equipment,
  });

  void zeigeBenutzerDetails() {
    print("Benutzer: \$name, Alter: \$alter, Niveau: \$niveau, Ziel: \$ziel, Equipment: \$equipment");
  }
}

// Klasse: Trainingsplan
class Trainingsplan {
  String name;
  String ziel; // Der Plan ist für Abnehmen, Muskelaufbau etc. gedacht
  List<String> uebungen; // Liste von Übungen im Plan
  int dauerInWochen;

  Trainingsplan({
    required this.name,
    required this.ziel,
    required this.uebungen,
    required this.dauerInWochen,
  });

  void zeigeTrainingsplan() {
    print("Trainingsplan: \$name (\$ziel)");
    print("Dauer: \$dauerInWochen Wochen");
    print("Übungen:");
    for (var uebung in uebungen) {
      print("- \$uebung");
    }
  }
}

// Klasse: PushBenachrichtigung
class PushBenachrichtigung {
  String nachricht;

  PushBenachrichtigung(this.nachricht);

  void sendeBenachrichtigung() {
    print("PUSH: \$nachricht");
  }
}



/* Erklärung der Hauptlogik:
	1.	Startpunkt (main):
	•	Initialisiert die Listen exercises und fitnessPlan.
	•	Zeigt ein Menü an, das der Benutzer steuern kann.
	•	Reagiert auf die Eingabe des Benutzers, bis er die App beendet.
	2.	Menüstruktur:
	•	Die Menüoptionen bieten Zugriff auf Funktionen:
	•	Übungen ansehen
	•	Plan erstellen
	•	Plan überprüfen
	•	App beenden
	3.	Benutzerinteraktion:
	•	Eingaben werden geprüft, um Fehler zu vermeiden (z. B. leere Eingabe).
	•	Die Eingabe wird verarbeitet und entsprechend gehandelt.
	4.	Dynamik:
	•	Der Benutzer kann jederzeit zurückkehren, weitere Optionen wählen oder die App beenden. */


 /* *** FitLover App - Hauptmenü ***
1. Verfügbare Übungen anzeigen
2. Einen Fitnessplan erstellen
3. Fitnessplan anzeigen
4. App beenden
Wähle eine Option (1-4): 1

--- Verfügbare Übungen ---
1. Liegestütze
2. Kniebeugen
3. Plank
4. Burpees

*** FitLover App - Hauptmenü ***
1. Verfügbare Übungen anzeigen
2. Einen Fitnessplan erstellen
3. Fitnessplan anzeigen
4. App beenden
Wähle eine Option (1-4): 2

--- Fitnessplan erstellen ---
--- Verfügbare Übungen ---
1. Liegestütze
2. Kniebeugen
3. Plank
4. Burpees
Gib die Nummern der Übungen ein (z. B. 1,3): 1,3
Dein Fitnessplan wurde erstellt!

*** FitLover App - Hauptmenü ***
1. Verfügbare Übungen anzeigen
2. Einen Fitnessplan erstellen
3. Fitnessplan anzeigen
4. App beenden
Wähle eine Option (1-4): 3

--- Dein Fitnessplan ---
1. Liegestütze
2. Plank */