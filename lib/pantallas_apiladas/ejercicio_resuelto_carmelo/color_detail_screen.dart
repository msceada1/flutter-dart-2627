import 'package:flutter/material.dart';

class ColorDetailScreen extends StatelessWidget {
  Color _backgroundColor;

  ColorDetailScreen({required this._backgroundColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('VOLVER'),
        ),
      ),
    );
  }
}
