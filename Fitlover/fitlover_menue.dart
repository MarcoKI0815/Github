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
