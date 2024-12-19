// Klasse: PushBenachrichtigung
class PushBenachrichtigung {
  String nachricht;

  PushBenachrichtigung(this.nachricht);

  void sendeBenachrichtigung() {
    print("PUSH: $nachricht");
  }
}