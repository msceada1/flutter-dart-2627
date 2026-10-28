import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Pantalla2()));
}

class Pantalla2 extends StatelessWidget {
  String nombre;

  const Pantalla2({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.nombre)),
      body: SafeArea(child: Column(
        children: [

        ],
      )),
    );
  }
}
