enum Weekday { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  Weekday? weekday = Weekday.thursday;
  switch (weekday) {
    case Weekday.monday || Weekday.tuesday:
      print("Montage und Dienstage sind anstrengend");
    case Weekday.wednesday || Weekday.thursday:
      print("Mittwoch und Donnerstag sind ok");
    case Weekday.friday:
      print("Freitag ist super");
    case Weekday.saturday || Weekday.sunday:
      print("Wochenende ist genial");
    default:
      print("kein Tag ausgewählt");
  }
  //Ich bevorzuge die Switch Case verzweigung, da sie übersichtlicher ist als eine If verzweigung.
}
