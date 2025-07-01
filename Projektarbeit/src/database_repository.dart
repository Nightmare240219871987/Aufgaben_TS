import 'account.dart';

abstract class DatabaseRepository {
  void updateAccount(String username, Account account);
  Account? readAccount(String username);
}
