import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'cacahuetes',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              tileColor: Colors.black,
            ),
            ListTile(
              title: Text(
                'yogures',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              tileColor: Colors.red,
            ),
            ListTile(
              title: Text(
                'manzanas',
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center,
              ),
              tileColor: Colors.orange,
            ),
            ListTile(
              title: Text(
                'manzanas',
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
              tileColor: Colors.green,
            ),
            ListTile(
              title: Text(
                'manzanas',
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              tileColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
