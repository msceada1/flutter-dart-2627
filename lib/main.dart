import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp es la casa
      debugShowCheckedModeBanner: false, //se quita el boton de debug
      home: Scaffold(
        //plano
        backgroundColor: Colors.red, //le digo al plano que el fondo sea rojo
        body: SafeArea(
          bottom: false, // no llega a cubrir los iconos de arriba
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                alignment: Alignment.center,
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
