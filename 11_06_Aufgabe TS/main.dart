void main() {
  // Liste hat garantiert immer 3 Elemente
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];
  // Erstelle leere Liste für Temperaturen
  List<double?> temps = [];
  List<double?> wind = [];
  List<double?> rain = [];

  for (var item in weatherData) {
    if (item["temp"] != null) {
      temps.add(item["temp"]);
    }
    if (item["wind"] != null) {
      wind.add(item["wind"]);
    }
    if (item["rain"] != null) {
      rain.add(item["rain"]);
    }
  }
  // Füge die Temperaturen der Wetterdaten in die Liste ein temps.add (weatherData[0]['temp']); temps.add(weatherData[1]['temp']); temps.add(weatherData[2][ 'temp']);
  // Berechne den Durchschnitt der Temperaturen
  double avgTemp = 0;
  for (double? t in temps) {
    avgTemp += t!;
  }
  avgTemp /= temps.length;
  double avgWind = 0;
  for (double? w in wind) {
    avgWind += w!;
  }
  avgWind /= wind.length;
  double avgRain = 0;
  for (double? r in rain) {
    avgRain += r!;
  }
  avgRain /= temps.length;

  print('Durchschnittstemperatur: $avgTemp');
  print('Durchschnittswindgeschwindigkeiten: $avgWind');
  print('Durchschnittsniederschlag: $avgRain');
}
