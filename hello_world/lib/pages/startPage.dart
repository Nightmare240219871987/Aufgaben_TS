import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo Welt"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red,
    );
  }
}
