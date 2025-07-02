import 'src/account.dart';
import 'src/user.dart';
import 'src/archivements.dart';
import 'src/mock_database_repository.dart';
import 'src/database_repository.dart';

late Account account;
late DatabaseRepository db;
void main() {
  setup();
  print(account.toJson());
}

void setup() {
  db = MockDatabaseRepository();
  account = Account.getInstance()!;
  account.user = User(
    "MarcusSchmidt",
    "Sdfgasdfasdfasdfasd",
    "Marcusschmidt2401@hotmail.de",
  );
  account.archivements = Archivements.getInstance();
  account.incoming = 1600;
  account.available = 600;
  account.spended = 1000;
  account.saved = 100;
}
