class Tool {
  String name;
  double weight;
  String dimension;

  Tool(this.name, this.weight, this.dimension);

  void printInfo() {
    print("Name : $name\nWeight : $weight\nDimension : $dimension");
  }
}

class Hammer extends Tool {
  String art;

  Hammer(this.art, String name, double gewicht, String dimension)
    : super(name, gewicht, dimension);

  void printArt() {
    print("Art : $art");
  }
}

class Saw extends Tool {
  int toothCount;

  Saw(this.toothCount, String name, double weight, String dimension)
    : super(name, weight, dimension);

  void printToothCount() {
    print("Tooth Count : $toothCount");
  }
}

class Grocery {
  String name;
  String hersteller;
  double gewicht;
  double preis;

  Grocery(this.name, this.hersteller, this.gewicht, this.preis);

  void printInfo() {
    print(
      "Name : $name\nHersteller : $hersteller\nGewicht : $gewicht\nPreis : $preis",
    );
  }
}

class Milk extends Grocery {
  int volume;

  Milk(
    this.volume,
    String name,
    String hersteller,
    double gewicht,
    double preis,
  ) : super(name, hersteller, gewicht, preis);

  @override
  void printInfo() {
    super.printInfo();
    print("Volumen : $volume");
  }
}

class Butter extends Grocery {
  bool hasOmega3;

  Butter(
    this.hasOmega3,
    String name,
    String hersteller,
    double gewicht,
    double preis,
  ) : super(name, hersteller, gewicht, preis);

  @override
  void printInfo() {
    super.printInfo();
    print("Has Omega3 : $hasOmega3");
  }
}

void main() {
  Hammer h = Hammer("Zimmermannshammer", "Zimmermannshammer", 2, "50x20");
  Saw s = Saw(200, "Säge", 1, "100x30");
  Milk m = Milk(1, "Milch 3.5", "Milsana", 1, 0.99);
  Butter b = Butter(false, "Deutsche Markenbutter", "Milsana", 0.250, 1.49);
  m.printInfo();
  b.printInfo();
}
