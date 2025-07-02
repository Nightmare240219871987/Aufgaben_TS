import 'archivements.dart';
import 'cost.dart';
import 'database_repository.dart';
import 'goal.dart';
import 'user.dart';

class MockDatabaseRepository implements DatabaseRepository {
  @override
  User readUser(String username) {
    throw UnimplementedError();
  }

  @override
  void updateUser(String username, User user) {
    throw UnimplementedError();
  }

  @override
  Archivements readArchivements(String username) {
    throw UnimplementedError();
  }

  @override
  void updateArchivements(String username, Archivements archivements) {
    throw UnimplementedError();
  }

  @override
  double readIncoming(String username) {
    throw UnimplementedError();
  }

  @override
  void updateIncoming(String username, double incoming) {
    print("updateIncoming is triggered");
  }

  @override
  double readAvailable(String username) {
    throw UnimplementedError();
  }

  @override
  List<Cost> readCosts(String username) {
    throw UnimplementedError();
  }

  @override
  List<Goal> readGoals(String username) {
    throw UnimplementedError();
  }

  @override
  List<Cost> readMonthlyCosts(String username) {
    throw UnimplementedError();
  }

  @override
  double readSaved(String username) {
    throw UnimplementedError();
  }

  @override
  double readSpended(String username) {
    throw UnimplementedError();
  }

  @override
  void updateAvailable(String username, double available) {
    print("updateAvailable is triggered");
  }

  @override
  void updateCosts(String username, List<Cost> costs) {
    print("updateCosts is triggered");
  }

  @override
  void updateGoals(String username, List<Goal> goals) {
    print("updateGoals is triggered");
  }

  @override
  void updateMonthlyCosts(String username, List<Cost> monthlyCosts) {
    print("updateMonthlyCosts is triggered");
  }

  @override
  void updateSaved(String username, double saved) {
    print("updateSaved is triggered");
  }

  @override
  void updateSpended(String username, double spended) {
    print("updateIncoming is triggered");
  }
}
