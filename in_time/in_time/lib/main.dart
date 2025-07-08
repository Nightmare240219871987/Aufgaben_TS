import 'package:flutter/material.dart';
import 'package:in_time/pages/loading_home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Color primary = Color(0xFF7C04B8);

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "In Time",
      home: LoadingHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
