List<String> vocals = ["a", "e", "i", "o", "u"];

void main() {
  print(getVocals("Hallo Welt"));
  print(getVocals("wie geht es dir"));
  print(getVocals("es ist so toll"));
}

int getVocals(String text) {
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    for (String s in vocals) {
      if (text[i].toLowerCase() == s) {
        count++;
      }
    }
  }
  return count;
}
