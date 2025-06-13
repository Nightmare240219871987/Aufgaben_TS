List<int> points = [4, 5, 4, 2, 6, 6, 3];
List<String> names = [
  'Julietta',
  'Benjamino',
  'Hans-Günther',
  'Evalinea',
  'Fiona',
  'Gregory',
  'Leonhart',
];

void main() {
  int add = 0;
  for (int p in points) {
    add += p;
  }
  print("${add / points.length}");
}
