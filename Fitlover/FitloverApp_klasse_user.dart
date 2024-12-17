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
    print("Benutzer: $name, Alter: $alter, Niveau: $niveau, Ziel: $ziel, Equipment: $equipment");
  }
}