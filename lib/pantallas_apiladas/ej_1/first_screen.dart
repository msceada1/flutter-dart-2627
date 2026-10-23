import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pantallas_apiladas/ej_1/second_screen.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(centerTitle: true, title: Text('FIRST SCREEN'),),
          body: Center(child: TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return SecondScreen();
            },));
          }, child: Text('Ve a la segunda pantalla')),),
        )
    );
  }
}