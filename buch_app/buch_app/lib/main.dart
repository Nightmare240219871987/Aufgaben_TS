import 'package:buch_app/Pages/login_mask.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        //appBar: AppBar(title: Text("Buch App", style: TextStyle(fontSize: 38))),
        child: LoginMask(),
      ),
    );
  }
}
