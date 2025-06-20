List<String> vocals = ["a", "e", "i", "o", "u"];

void main() {
  print(getVocals("Hallo Welt"));
  print(getVocals("wie geht es dir"));
  print(getVocals("es ist so toll"));
}

int getVocals(String text) {
  int count = 0;
  for (String s in vocals) {
    if (text.toUpperCase().contains(s.toUpperCase())) {
      if (text.allMatches(s).length > 1) {
        count += text.allMatches(s).length;
      } else {
        count++;
      }
    }
  }
  return count;
}
