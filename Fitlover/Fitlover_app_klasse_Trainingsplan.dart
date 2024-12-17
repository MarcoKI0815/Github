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
    print("Trainingsplan: $name ,$ziel");
    print("Dauer: $dauerInWochen Wochen");
    print("Übungen:");
    for (var uebung 
    in uebungen) {
      print("$uebung");
    }
  }
}
