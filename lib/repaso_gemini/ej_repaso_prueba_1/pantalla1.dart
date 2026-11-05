import 'package:flutter/material.dart';

import 'pantalla2.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Pantalla1()),
  );
}

class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  final String _uriImagen1 =
      'https://www.regalospublicitarios.com/866331-thickbox_default/libreta-de-bolsillo-classic.jpg';

  // Variable para usar el setState
  bool estaCompletado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('To Do List', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[900],
      ),
      body: SafeArea(
        // Cambiamos Column por ListView para permitir scroll
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            // Container para darle forma de tarjeta
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // 1. Imagen a la izquierda
                  Image.network(
                    _uriImagen1,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 15), // Espaciador
                  // 2. Columna central con textos y botón de ver
                  Expanded(
                    // Expanded evita errores de overflow horizontal
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'General list',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'You have 15 things to do',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                        // Botón de navegación (en la lista de requisitos)
                        IconButton(
                          icon: const Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navegación hacia Pantalla 2 pasando el dato
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Pantalla2(image: _uriImagen1),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  // 3. Botón interactivo a la derecha con setState
                  IconButton(
                    icon: Icon(
                      estaCompletado
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: estaCompletado ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        estaCompletado = !estaCompletado;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
