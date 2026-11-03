import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final videojuegos = const [
    'call of duty Morden Warfare 4',
    'Gears of War E-DAY',
    'Fortnite',
    'Minecraft',
    'FC 27',
  ];

  final juegosnintendo = const [
    'Super Mario Bros',
    'Mario Strikers',
    'Splatoon 2',
    'Super Mario Maker 2',
    'Luigi Masion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...videojuegos.map(
            (videojuegos) => ListTile(
              leading: Icon(Icons.gamepad),
              title: Text(videojuegos),
              subtitle: Text('Mis Videojuegos Favoritos'),
              trailing: Icon(Icons.videogame_asset),
              tileColor: Color.fromARGB(255, 7, 208, 234),
              iconColor: Color.fromARGB(214, 208, 2, 2),
              textColor: Color.fromARGB(115, 19, 18, 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
            ),
          ),
          Divider(),
          ...juegosnintendo.map(
            (juegosnintendo) => ListTile(
              leading: Icon(Icons.gamepad),
              title: Text(juegosnintendo),
              subtitle: Text('Juegos de la Nintendo switch 2'),
              trailing: Icon(Icons.videogame_asset),
            ),
          ),
        ],
      ),
    );
  }
}
