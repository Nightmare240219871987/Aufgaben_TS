import 'package:flutter/material.dart';
import 'package:in_time/pages/settings_page.dart';
import 'package:in_time/pages/start_page.dart';

class LoadingHomePage extends StatelessWidget {
  const LoadingHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final Color primary = Color(0xFF7C04B8);
  final Color secondary = Color(0xFF111111);
  final Color primaryLight = Color(0xEEBF99D2);
  final Color secondaryFont = Color(0xFFEEEEEE);

  int _currentIndex = 0;

  final List<Widget> screens = [StartPage(), SettingsPage()];

  void buttonTap() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "In Time",
            style: TextStyle(
              fontSize: 48,
              color: secondaryFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: primary,
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => {
          setState(() {
            _currentIndex = index;
          }),
        },
        backgroundColor: primaryLight,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Startseite"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Einstellungen",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: buttonTap),
    );
  }
}
