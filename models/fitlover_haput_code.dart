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
