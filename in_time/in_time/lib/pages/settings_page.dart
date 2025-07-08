import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final Color primary = Color(0xFF7C04B8);
  final Color secondary = Color(0xFF111111);
  final Color primaryLight = Color(0xEEBF99D2);
  final Color secondaryFont = Color(0xFFEEEEEE);

  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primary, primaryLight],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Einstellungen",
                style: TextStyle(fontSize: 32, color: secondaryFont),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "Stundenlohn",
                labelStyle: TextStyle(fontSize: 20, color: secondaryFont),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
