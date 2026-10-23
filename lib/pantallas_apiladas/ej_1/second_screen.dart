import 'package:flutter/material.dart';

void main() {
  runApp(const SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(centerTitle: true),
    );
  }
}
