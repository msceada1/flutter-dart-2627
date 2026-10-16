import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Material Design styles
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Colors.red, width: 100,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100, width: 100, color: Colors.yellow[200],),
                Container(height: 100, width: 100, color: Colors.yellowAccent[200] ,)
              ],
            ),
            Container(color: Colors.blue, width: 100,)
          ],
        )
      ),
    );
  }
}