String? getUserInput(String prompt) {
  stdout.write(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Eingabe erforderlich!");
  }
  return input;
}