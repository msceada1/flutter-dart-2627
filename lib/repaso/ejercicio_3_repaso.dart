import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset('assets/images/dog.jpg'),
                      ),
                    ),
                    Expanded(child: Container(color: Colors.red)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset('assets/images/puente.jpg'),
                ),
              ),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(child: Container(
                    color: Colors.cyan,
                  )),
                  Expanded(child: Container(
                    color: Colors.greenAccent,
                  )),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
