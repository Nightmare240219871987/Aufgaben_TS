class Goal {
  late String _title;
  late String _description;
  late double _price;

  Goal(String title, String description, double price) {
    this._title = title;
    this._description = description;
    this._price = price;
  }

  String get title {
    return this._title;
  }

  void set title(String title) {
    this._title = title;
  }

  String get description {
    return this._description;
  }

  void set description(String description) {
    this._description = description;
  }

  double get price {
    return this._price;
  }

  void set price(double price) {
    this._price = price;
  }

  // Konvertierung in JSON Format
  Map<String, dynamic> toJson() => {
    "_title": _title,
    "_description": _description,
    "_price": _price,
  };
}
