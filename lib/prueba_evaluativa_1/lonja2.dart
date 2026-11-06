import 'package:flutter/material.dart';

class Lonja2 extends StatelessWidget {
  const Lonja2({super.key, required this._nombrePez});

  final _nombrePez;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle Captura'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: .center,
            child: Column(
              crossAxisAlignment: .center,
              children: [
                Text('Primera A'),
                Row(
                  crossAxisAlignment: .center,
                  children: [
                    Text(_nombrePez, textAlign: .center),
                    Text('28euros', textAlign: .center),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: .center,
            child: Column(
              crossAxisAlignment: .center,
              children: [
                Row(
                  crossAxisAlignment: .center,
                  children: [
                    Icon(Icons.directions_boat),
                    Text('datos del barco'),
                  ],
                ),
                Row(
                  crossAxisAlignment: .center,
                  children: [
                    Text('siempre del carmen', textAlign: .center),
                    Text('17:30', textAlign: .center),
                  ],
                ),
                Text('Trasmallo'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
