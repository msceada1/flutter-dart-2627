import 'package:flutter/material.dart';

class ColorDetailScreen extends StatelessWidget {
  Color backgroundColor;

  ColorDetailScreen({required this.backgroundColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('VOLVER'),
        ),
      ),
    );
  }
}
