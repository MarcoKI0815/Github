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