import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Center(
            child: Text("Aufgabe 1", style: TextStyle(fontSize: 20)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Hello App Akademie!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple,
                      ),
                      width: 50,
                      height: 33,
                      alignment: Alignment.center,
                      child: Text("A", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple,
                      ),
                      width: 50,
                      height: 33,
                      alignment: Alignment.center,
                      child: Text("B", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple,
                      ),
                      width: 50,
                      height: 33,
                      alignment: Alignment.center,
                      child: Text("C", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.face, color: Colors.black, size: 38),
                  Icon(Icons.face, color: Colors.black, size: 38),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
