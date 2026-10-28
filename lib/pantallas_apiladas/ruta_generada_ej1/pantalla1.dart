import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pantallas_apiladas/ruta_generada_ej1/pantalla2.dart';

void main() {
  //preguntar por que con const sale en rojo y en caso contrario no
  runApp(
    MaterialApp(
      home: Pantalla1(),
      onGenerateRoute: (settings) {
        if (settings.name == '/pantalla2') {
          final nombreRecibido = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return Pantalla2(nombre: nombreRecibido);
            },
          );
        }
        return null;
      },
    ),
  );
}

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('store'), centerTitle: true),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/images/iron_man_donut.jpg',
                width: 40,
                height: 40,
              ),
              title: Text('tony stark', textAlign: .center),
              subtitle: Text('iron man', textAlign: .center),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/pantalla2',
                    arguments: 'tony stark',
                  );
                },
                icon: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
