import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  // Recibimos la URL de la imagen
  final String image;

  const Pantalla2({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalle de la Lista',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostramos la imagen en grande usando la variable recibida
            Image.network(image, width: 250, height: 250, fit: BoxFit.cover),
            const SizedBox(height: 30),

            const Text(
              'Aquí están los detalles.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),

            // Botón para retroceder
            ElevatedButton(
              onPressed: () {
                // Volvemos a la pantalla 1
                Navigator.pop(context);
              },
              child: const Text('Volver atrás'),
            ),
          ],
        ),
      ),
    );
  }
}
