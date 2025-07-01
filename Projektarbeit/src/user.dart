class User {
  late String _email;
  late String _username;
  late String _password;

  User(String username, String password, String email) {
    this._email = email;
    this._username = username;
    this._password = password;
  }

  String get email {
    return this._email;
  }

  void set email(String email) {
    this._email = email;
  }

  // gibt den benutzernamen zurück
  String get username {
    return this._username;
  }

  // hier kann der benutzer angelegt werden
  void set username(String username) {
    this._username = username;
  }

  // hier wird das Passwort gehashed zurück gegeben.
  String get password {
    // Passwort wird gehashed gespeichert.
    return this._password;
  }

  //hier kann man das passwort erstellen (Klartext -> Hash)
  void set password(String password) {
    // Passwort wird gehashed gespeichert.
    // Hier kommt die Hash funktion rein.
    this._password = password; // hier soll das gehashte passwort rein.
  }

  // Konvertierung in JSON Format
  Map<String, dynamic> toJson() => {
    "_username": _username,
    "_password": _password,
    "_email": _email,
  };
}
