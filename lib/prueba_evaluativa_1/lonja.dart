import 'package:flutter/material.dart';
import 'package:introduccion_flutter/prueba_evaluativa_1/data/mock_data.dart';
import 'package:introduccion_flutter/prueba_evaluativa_1/lonja2.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Lonja()));
}

class Lonja extends StatefulWidget {
  const Lonja({super.key});

  @override
  State<Lonja> createState() => _Lonja1State();
}

class _Lonja1State extends State<Lonja> {
  final _nombreGamba = 'Gamba blanca';
  final _nombreChoco = 'Choco';
  bool _resaltarPares = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('La lonja'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            setState(() {
              _resaltarPares = !_resaltarPares;
            });
          }, icon: Icon(Icons.eighteen_mp_rounded)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          Captura captura = mockCapturas[index];
          TipoPescado pescado = obtenerPescadoPorId(captura.tipoPescadoId);
          Barco barco = obtenerBarcoPorId(captura.barcoId);
          return ListTile(
            tileColor: (_resaltarPares && index % 2 == 0) ? Colors.grey : null,
            leading: Image.asset(pescado.imagenUrl),
            title: Text(pescado.nombre),
            subtitle: Row(
              children: [Icon(Icons.directions_boat), Text(barco.nombre)],
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lonja2(captura: mockCapturas[index]),
                  ),
                );
              },
              icon: Icon(Icons.navigate_next),
            ),
          );
        },
        itemCount: mockCapturas.length,
      ),
    );
  }
}
/*
class ListaLonja extends StatelessWidget {

}

 */
