import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Pantalla2(nombre: 'tony stark')));
}

class Pantalla2 extends StatelessWidget {
  String nombre;

  Pantalla2({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.nombre)),
      body: SafeArea(child: Column(children: [])),
    );
  }
}
