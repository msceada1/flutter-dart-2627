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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset('assets/images/dog.jpg'),
                      ),
                    ),
                    Expanded(flex: 4, child: Container(color: Colors.yellow)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset('assets/images/puente.jpg'),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: Container(color: Colors.blue)),
                    Expanded(child: Container(color: Colors.grey)),
                    Expanded(child: Container(color: Colors.greenAccent)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
