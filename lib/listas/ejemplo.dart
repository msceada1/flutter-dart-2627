import 'package:flutter/material.dart';

const LIMITE = 50;

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
        appBar: AppBar(title: Text("LISTVIEW")),
        body: ListView.separated(
          itemBuilder: (context, index) {
            Color colorFondo = index % 2 == 0 ? Colors.yellow : Colors.green;
            return ListTile(
              title: Text(
                index % 2 == 0 ? 'numero par: $index' : 'numero impar $index',
              ),
              tileColor: colorFondo,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            Color color = index % 2 == 0 ? Colors.cyan : Colors.red;
            return Divider(color: color, height: 10);
          },
          itemCount: LIMITE,
        ),
      ),
    );
  }
}
