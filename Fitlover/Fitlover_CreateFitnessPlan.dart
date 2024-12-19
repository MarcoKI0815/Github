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