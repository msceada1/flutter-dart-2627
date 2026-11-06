import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('La lonja'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.eighteen_mp_rounded)),
        ],
      ),

      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/images/gamba_blanca.jpg'),
            title: Text(_nombreGamba, textAlign: .center),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: .spaceEvenly,
              children: [
                Icon(Icons.directions_boat),
                Text('Mar de Isla', textAlign: .center),
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lonja2(nombrePez: this._nombreGamba,)),
                );
              },
              icon: Icon(Icons.navigate_next),
            ),
          ),
          ListTile(
            leading: Image.asset('assets/images/choco.jpg'),
            title: Text(_nombreChoco, textAlign: .center),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: .spaceEvenly,
              children: [
                Icon(Icons.directions_boat),
                Text('Tragaluz', textAlign: .center),
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lonja2(nombrePez: this._nombreChoco,)),
                );
              },
              icon: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }
}
