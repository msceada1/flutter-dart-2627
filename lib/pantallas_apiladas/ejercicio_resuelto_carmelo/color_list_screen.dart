import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pantallas_apiladas/ejercicio_resuelto_carmelo/color_detail_screen.dart';


class ColorListScreen extends StatelessWidget {
  const ColorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [ListTileColor(nameColor: 'ROJO', color: Colors.red,),
        ListTileColor(nameColor: 'VERDE', color: Colors.green,),
    ListTileColor(nameColor: 'AZUL', color: Colors.blue,),
    ListTileColor(nameColor: 'AMARILLO', color: Colors.amber,)];

    return Scaffold(
      appBar: AppBar(title: Text('PROFILE')),
      body: ListView.separated(itemCount: 4, itemBuilder: (context, index) {
        return items[index];
      }, separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      ),
    );
  }
}

class ListTileColor extends StatelessWidget {
  String _nameColor;
  Color _color;

  ListTileColor({required this._nameColor, required this._color, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_nameColor),
      trailing: IconButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ColorDetailScreen(backgroundColor: _color),
          ),
        ),
        icon: Icon(Icons.chevron_right),
      ),
    );
  }
}
