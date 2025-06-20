void main() {
  print(getLength("Hallo"));
  print(getLength("Welt"));
  print(getLength("und Tschüss"));
}

int getLength(String text) {
  return text.length;
}
