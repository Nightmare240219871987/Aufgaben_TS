import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final Color primary = Color(0xFF7C04B8);
  final Color secondary = Color(0xFF111111);
  final Color primaryLight = Color(0xEEBF99D2);
  final Color secondaryFont = Color(0xFFEEEEEE);

  StartPage({super.key});

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
          children: [Text("Hallo Welt")],
        ),
      ),
    );
  }
}
