import 'dart:convert';
import 'database_repository.dart';
import 'account.dart';
import "dart:io";

class MockDatabaseRepository implements DatabaseRepository {
  void writeFile(String path, String content) {
    File file = File(path);
    if (file.existsSync()) {
      file.deleteSync();
    } else {
      file.createSync();
    }
    file.writeAsStringSync(content);
  }

  String readFile(String path) {
    File file = File(path);
    file.openRead();
    return file.readAsStringSync();
  }

  @override
  void updateAccount(String username, Account account) {
    String content = jsonEncode(account);
    writeFile("db.txt", content);
  }

  @override
  Account readAccount(String username) {
    String content = readFile("db.txt");
    content = content.replaceAll(r"\", "");
    dynamic temp = jsonDecode(content);
    if (temp is Account) {
      return temp;
    }

    return Account.getInstance();
  }
}
