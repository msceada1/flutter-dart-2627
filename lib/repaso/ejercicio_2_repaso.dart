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
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container(color: Colors.yellow)),
                  ],
                ),
              ),
              Expanded(child: Container(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
