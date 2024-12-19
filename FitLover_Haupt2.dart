import 'dart:io'; // Für Benutzereingaben und Konsolenausgaben

// Klasse: Benutzer
class Benutzer {
  String name; // Name des Benutzers
  int alter; // Alter des Benutzers
  String niveau; // Fitnessniveau (z.B. Anfänger, Fortgeschrittener, Profi)
  String ziel; // Fitnessziel (z.B. Muskelaufbau, Abnehmen)
  String equipment; // Verfügbares Equipment (z.B. Zuhause, Gym)

  Benutzer({
    required this.name,
    required this.alter,
    required this.niveau,
    required this.ziel,
    required this.equipment,
  });

  // Zeigt die Details des Benutzers an
  void zeigeBenutzerDetails() {
    print("\n--- Benutzerprofil ---");
    print("Name: $name");
    print("Alter: $alter");
    print("Niveau: $niveau");
    print("Ziel: $ziel");
    print("Equipment: $equipment");
  }
}

// Klasse: Trainingsplan
class Trainingsplan {
  final List<String> verfuegbareUebungen = ["Liegestütze", "Kniebeugen", "Plank", "Burpees"];
  final List<String> plan = []; // Verwendet `final`, da die Liste selbst unveränderlich ist

  // Zeigt verfügbare Übungen an
  void zeigeUebungen() {
    print("\n--- Verfügbare Übungen ---");
    for (int i = 0; i < verfuegbareUebungen.length; i++) {
      print("${i + 1}. ${verfuegbareUebungen[i]}");
    }
  }

  // Erstellt einen Fitnessplan
  void fitnessPlanErstellen() {
    zeigeUebungen();
    stdout.write("Wähle Übungen (z. B. 1,3): ");
    String? input = stdin.readLineSync();

    if (input != null && input.isNotEmpty) {
      List<String> auswahl = input.split(',');
      for (String idx in auswahl) {
        int index = int.tryParse(idx.trim()) ?? -1;

        if (index > 0 && index <= verfuegbareUebungen.length) {
          String uebung = verfuegbareUebungen[index - 1];
          if (!plan.contains(uebung)) {
            plan.add(uebung);
          } else {
            print("Übung '$uebung' ist bereits im Fitnessplan.");
          }
        } else {
          print("Ungültige Auswahl: $idx");
        }
      }
    }

    if (plan.isNotEmpty) {
      print("\nFitnessplan erfolgreich erstellt!");
      zeigeFitnessPlan();
    } else {
      print("\nKeine gültigen Übungen ausgewählt. Bitte erneut versuchen.");
    }
  }

  // Zeigt den aktuellen Fitnessplan an
  void zeigeFitnessPlan() {
    print("\n--- Dein Fitnessplan ---");
    if (plan.isEmpty) {
      print("Noch keine Übungen hinzugefügt.");
    } else {
      for (int i = 0; i < plan.length; i++) {
        print("${i + 1}. ${plan[i]}");
      }
    }
    print("Drücke Enter, um zum Hauptmenü zurückzukehren.");
    stdin.readLineSync();
  }
}

// Hauptprogramm
void main() {
  Benutzer benutzer = Benutzer(
    name: "Max Mustermann",
    alter: 25,
    niveau: "Anfänger",
    ziel: "Muskelaufbau",
    equipment: "Zuhause",
  );

  Trainingsplan trainingsplan = Trainingsplan();

  while (true) {
    print("\n*** FitLover App - Hauptmenü ***");
    print("1. Benutzerprofil anzeigen");
    print("2. Verfügbare Übungen anzeigen");
    print("3. Fitnessplan erstellen");
    print("4. Fitnessplan anzeigen");
    print("5. App beenden");

    stdout.write("Wähle eine Option (1-5): ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty || int.tryParse(input) == null || int.parse(input) < 1 || int.parse(input) > 5) {
      print("Bitte eine gültige Zahl (1-5) eingeben.");
      continue;
    }

    switch (input) {
      case '1':
        benutzer.zeigeBenutzerDetails();
        break;
      case '2':
        trainingsplan.zeigeUebungen();
        break;
      case '3':
        trainingsplan.fitnessPlanErstellen();
        break;
      case '4':
        trainingsplan.zeigeFitnessPlan();
        break;
      case '5':
        print("Danke, dass du die FitLover-App genutzt hast. Bis bald!");
        return;
    }
  }
}