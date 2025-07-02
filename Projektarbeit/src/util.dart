import 'dart:io';

class Util {
  static void writeFile(String path, String content) {
    File file = File(path);
    if (file.existsSync()) {
      file.deleteSync();
    } else {
      file.createSync();
    }
    file.openWrite();
    file.writeAsStringSync(content);
  }

  static List<String> readFile(String path) {
    File file = File(path);
    file.openRead();
    return file.readAsLinesSync();
  }
}
