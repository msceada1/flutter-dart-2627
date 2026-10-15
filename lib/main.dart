import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Material Design styles
      home: Scaffold(
        appBar: AppBar( //Creamos un barra horizontal superior
          title: Text('Profile'),
          backgroundColor: Colors.green[500],
        ),
        body: Center(
          child: Image.asset("assets/images/iron_man_donut.jpg"),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}