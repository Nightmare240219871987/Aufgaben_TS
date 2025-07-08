import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final Color primary = Color.fromARGB(255, 124, 4, 184);
  final Color secondary = Color.fromARGB(255, 17, 17, 17);
  final Color primaryLight = Color.fromARGB(235, 191, 153, 210);
  final Color secondaryFontColor = Color.fromARGB(255, 230, 230, 230);

  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Hello World",
          style: TextStyle(fontSize: 35, color: secondaryFontColor),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primary, primaryLight],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Text(
                  "Hello World",
                  style: TextStyle(fontSize: 48, color: secondaryFontColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
