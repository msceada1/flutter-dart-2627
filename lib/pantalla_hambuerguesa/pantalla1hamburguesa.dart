import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pantalla_hambuerguesa/pantalla2hamburguesa.dart';

void main() {
  runApp(const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final precioBurguer = 8.50;
  final precioPizza = 10.00;
  final precioTacos = 7.00;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'restoApp',
          textAlign: TextAlign.left,
          selectionColor: Colors.white,
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('burguer classic', textAlign: TextAlign.center),
            subtitle: Text(
              'queso, carne y bacon: $precioBurguer',
              textAlign: TextAlign.center,
            ),
            leading: Image.asset('assets/images/iron_man_donut.jpg'),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pantalla2hamburguesa(
                    price: precioBurguer,
                    image: Image.asset('assets/images/iron_man_donut.jpg'),
                  ),
                ),
              ),
              icon: Icon(Icons.chevron_right_rounded),
            ),
          ),
          ListTile(
            title: Text('pizza peperonni', textAlign: TextAlign.center),
            subtitle: Text(
              'queso mozarella: $precioPizza',
              textAlign: TextAlign.center,
            ),
            leading: Image.asset('assets/images/dog.jpg'),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pantalla2hamburguesa(
                    price: precioPizza,
                    image: Image.asset('assets/images/dog.jpg'),
                  ),
                ),
              ),
              icon: Icon(Icons.chevron_right_rounded),
            ),
          ),
          ListTile(
            title: Text('Tacos al pastor', textAlign: TextAlign.center),
            subtitle: Text(
              '3 unidades con piña - $precioTacos',
              textAlign: TextAlign.center,
            ),
            leading: Image.asset('assets/images/puente.jpg'),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pantalla2hamburguesa(
                    price: precioTacos,
                    image: Image.asset('assets/images/puente.jpg'),
                  ),
                ),
              ),
              icon: Icon(Icons.chevron_right_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
