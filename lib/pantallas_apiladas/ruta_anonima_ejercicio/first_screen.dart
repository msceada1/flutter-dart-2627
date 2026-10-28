import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pantallas_apiladas/ejercicio_resuelto_carmelo/color_detail_screen.dart';

void main() {
  runApp(const MaterialApp(home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("profile"), centerTitle: true),
      body: ListView(
        children: [
          ListTile(
            title: Text('rojo', textAlign: TextAlign.center),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ColorDetailScreen(backgroundColor: Colors.red),
                ),
              ),
              icon: Icon(Icons.chevron_right),
            ),
          ),
          ListTile(
            title: Text('azul', textAlign: TextAlign.center),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ColorDetailScreen(backgroundColor: Colors.blue),
                ),
              ),
              icon: Icon(Icons.chevron_right),
            ),
          ),
          ListTile(
            title: Text('verde', textAlign: TextAlign.center),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ColorDetailScreen(backgroundColor: Colors.green),
                ),
              ),
              icon: Icon(Icons.chevron_right),
            ),
          ),
          ListTile(
            title: Text('amarillo', textAlign: TextAlign.center),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ColorDetailScreen(backgroundColor: Colors.yellow),
                ),
              ),
              icon: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
