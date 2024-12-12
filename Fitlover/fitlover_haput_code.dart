import 'dart:io';

void main() {
  List<String> exercises = ["Liegestütze", "Kniebeugen", "Plank", "Burpees"];
  List<String> fitnessPlan = [];

  while (true) {
    printMainMenu();
    String? choice = getUserInput("Wähle eine Option (1-4): ");
    if (choice == null || choice.isEmpty) {
      print("Ungültige Eingabe. Bitte versuche es erneut.");
      continue;
    }

    switch (choice) {
      case '1':
        showExercises(exercises, "Verfügbare Übungen");
        break;
      case '2':
        fitnessPlan = createFitnessPlan(exercises);
        break;
      case '3':
        showExercises(fitnessPlan, "Dein Fitnessplan");
        break;
      case '4':
        print("Danke, dass du die FitLover-App genutzt hast. Bis bald!");
        return;
      default:
        print("Ungültige Auswahl. Bitte versuche es erneut.");
    }
  }
}

void printMainMenu() {
  print("\n*** FitLover App - Hauptmenü ***");
  print("1. Verfügbare Übungen anzeigen");
  print("2. Einen Fitnessplan erstellen");
  print("3. Fitnessplan anzeigen");
  print("4. App beenden");
}

String? getUserInput(String prompt) {
  stdout.write(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Eingabe erforderlich!");
  }
  return input;
}

void showExercises(List<String> exercises, String title) {
  if (exercises.isEmpty) {
    print("\n$title ist leer.");
    return;
  }
  print("\n--- $title ---");
  for (int i = 0; i < exercises.length; i++) {
    print("${i + 1}. ${exercises[i]}");
  }
}

List<String> createFitnessPlan(List<String> exercises) {
  print("\n--- Fitnessplan erstellen ---");
  showExercises(exercises, "Verfügbare Übungen");

  String? input = getUserInput("Gib die Nummern der Übungen ein (z. B. 1,3): ");
  List<String> plan = [];

  if (input != null && input.isNotEmpty) {
    List<String> selectedIndices = input.split(',');
    for (String index in selectedIndices) {
      int? idx = int.tryParse(index.trim());
      if (idx != null && idx > 0 && idx <= exercises.length) {
        plan.add(exercises[idx - 1]);
      } else {
        print("Ungültige Auswahl: $index");
      }
    }
    if (plan.isNotEmpty) {
      print("Dein Fitnessplan wurde erstellt!");
    } else {
      print("Keine gültigen Übungen ausgewählt.");
    }
  } else {
    print("Keine Eingabe erhalten.");
  }

  return plan;
}