import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.red)),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Container(color: Colors.blue)),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.pink,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
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