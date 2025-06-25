// soll benutzt werden um ein Konto anzulegen
// mit dem Arbeiten kann.
import 'cost.dart';
import 'goal.dart';

class Account {
  double _moneyAvailable = 0;
  double _moneyNotAvailable = 0;
  double _moneySaved = 0;
  List<Cost> monthlyCosts = [];
  List<Cost> costs = [];
  List<Goal> goals = [];

  Account(
    this._moneyAvailable,
    this._moneyNotAvailable,
    this._moneySaved,
    this.costs,
  ) {}
}
