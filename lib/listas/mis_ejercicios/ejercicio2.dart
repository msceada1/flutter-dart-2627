import 'package:flutter/material.dart';

const LIMITE = 100;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  bool esMultiplo10(int numero) {
    return numero % 10 == 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: LIMITE,
          itemBuilder: (context, index) {
            Color colorFondo = esMultiplo10(index)
                ? Colors.yellow
                : Colors.white;

            return ListTile(
              title: Text(
                '$index',
                style: esMultiplo10(index)
                    ? TextStyle(fontSize: 25.0, color: Colors.black)
                    : TextStyle(fontSize: 11.0),
              ),
              tileColor: colorFondo,
            );
          },
        ),
      ),
    );
  }
}
