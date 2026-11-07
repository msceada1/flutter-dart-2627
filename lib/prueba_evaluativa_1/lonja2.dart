import 'package:flutter/material.dart';

import 'data/mock_data.dart';

class Lonja2 extends StatelessWidget {
  const Lonja2({super.key, required this._captura});

  final Captura _captura;

  @override
  Widget build(BuildContext context) {
    TipoPescado pescado = obtenerPescadoPorId(_captura.tipoPescadoId);
    Barco barco = obtenerBarcoPorId(_captura.barcoId);

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
      body: Center(
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              height: 100,
              width: 400,
              child: Column(
                mainAxisAlignment: .spaceAround,
                children: [
                  Text(_captura.calidad),
                  Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Text(pescado.nombre),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0),
                        ),
                        child: Text('${_captura.precioPorKg}€/kg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: 400,
              height: 100,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.directions_boat),
                      Text('Datos del barco'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Text(barco.nombre),
                      Text(_captura.horaDesembarque),
                    ],
                  ),
                  Text(barco.nombre),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: 400,
              height: 100,
              child: Column(
                children: [Text('Descripcion'), Text(pescado.descripcion)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
