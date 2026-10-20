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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //la columna tiene un array de hijos
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Container(width: 20, height: 20, color: Colors.white),
                ),
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 20, height: 20, color: Colors.white),
                      // MainAxisAlignment.end
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        width: 20, height: 20, color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 20, height: 20, alignment: Alignment.center,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
