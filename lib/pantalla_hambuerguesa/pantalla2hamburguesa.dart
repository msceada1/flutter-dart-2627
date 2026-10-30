import 'package:flutter/material.dart';

class Pantalla2hamburguesa extends StatelessWidget {
  double price;
  Image image;//paso la imagen por parametros en la clase Pantalla1Hamburguesa

  Pantalla2hamburguesa({required this.price, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del producto', textAlign: TextAlign.center),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          image,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text('burguer classic', textAlign: .left),
              Text('price: \$$price', textAlign: .right),
            ],
          ),
          Text('Deliciosa hamburguesa de carne 100% de vacuno'),
        ],
      ),
    );
  }
}
