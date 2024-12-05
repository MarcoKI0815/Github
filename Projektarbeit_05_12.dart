void main() {
 String ampelFarbe = "Rot";
 switch (ampelFarbe) {
   case "Rot":
     print("Stop! Bitte anhalten.");
   case "Gelb":
     print("Achtung! Bereit machen zum Anfahren.");
   case "Grün":
     print("Fahren! Die Straße ist frei.");
   default:
     print("Ungültige Ampelfarbe.");
 }
}
