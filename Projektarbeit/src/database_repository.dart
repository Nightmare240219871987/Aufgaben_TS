import 'user.dart';
import 'archivements.dart';
import 'cost.dart';
import 'goal.dart';

abstract class DatabaseRepository {
  User readUser(String username);
  void updateUser(String username, User user);
  Archivements readArchivements(String username);
  void updateArchivements(String username, Archivements archivements);
  double readIncoming(String username);
  void updateIncoming(String username, double incoming);
  double readAvailable(String username);
  void updateAvailable(String username, double available);
  double readSpended(String username);
  void updateSpended(String username, double spended);
  double readSaved(String username);
  void updateSaved(String username, double saved);
  List<Cost> readMonthlyCosts(String username);
  void updateMonthlyCosts(String username, List<Cost> monthlyCosts);
  List<Cost> readCosts(String username);
  void updateCosts(String username, List<Cost> costs);
  List<Goal> readGoals(String username);
  void updateGoals(String username, List<Goal> goals);
}
