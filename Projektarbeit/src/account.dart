import 'dart:convert';

import 'archivements.dart';
import 'cost.dart';
import 'user.dart';
import 'goal.dart';

class Account {
  // Singleton Variable
  static Account? _account;

  // Klassen Variablen
  late User _user;
  late Archivements _archivements;
  double? _incoming;
  double? _available;
  double? _spended;
  double? _saved;

  List<Cost> _monthlyCosts = [];
  List<Cost> _costs = [];
  List<Goal> _goals = [];

  // Singleton Methode
  static Account getInstance() {
    if (_account == null) {
      return Account();
    } else {
      return _account!;
    }
  }

  // Klassen Methoden
  User get user {
    return this._user;
  }

  void set user(User user) {
    this._user = user;
  }

  Archivements get archivements {
    return this._archivements;
  }

  void set archivements(Archivements archivements) {
    this._archivements = archivements;
  }

  double get incoming {
    if (_incoming == null) {
      return 0;
    } else {
      return this._incoming!;
    }
  }

  void set incoming(double incoming) {
    this._incoming = incoming;
  }

  double get available {
    if (this._available == null) {
      return 0;
    } else {
      return this._available!;
    }
  }

  void set available(double available) {
    this._available = available;
  }

  double get spended {
    if (this._spended == null) {
      return 0;
    } else {
      return this._spended!;
    }
  }

  void set spended(double spended) {
    this._spended = spended;
  }

  double get saved {
    if (this._saved == null) {
      return 0;
    } else {
      return this._saved!;
    }
  }

  void set saved(double saved) {
    this._saved = saved;
  }

  List<Cost> get monthlyCosts {
    return this._monthlyCosts;
  }

  void set monthlyCosts(List<Cost> monthlyCosts) {
    this._monthlyCosts = monthlyCosts;
  }

  List<Cost> get costs {
    return this._costs;
  }

  void set costs(List<Cost> costs) {
    this._costs = costs;
  }

  List<Goal> get goals {
    return this._goals;
  }

  void set goals(List<Goal> goals) {
    this._goals = goals;
  }

  // Konvertierung in JSON Format
  Map<String, dynamic> toJson() => {
    "_user": jsonEncode(user),
    "_archivements": jsonEncode(_archivements),
    "_incoming": _incoming,
    "_available": _available,
    "_spended": _spended,
    "_saved": _saved,
    "_monthlyCosts": _monthlyCosts,
    "_cost": _costs,
    "_goals": _goals,
  };
}
