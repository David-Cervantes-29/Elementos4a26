import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> videojuegoss = const {
    'Call of Duty Morden Warfare 4': 'assets/images/COD.png',
    'Gears of War E-DAY': 'assets/images/GEARS.png',
    'Fortnite': 'assets/images/Fortnite.png',
    'Minecraft': 'assets/images/Minecraft.png',
    'FC 27': 'assets/images/EA.png',
  };

  final videojuegos = const [
    'Call of Duty Morden Warfare 4',
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

  Widget _tileVideojuegos(
    String videojuegosName,
    String videojuegosImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(videojuegosImage, width: 50, height: 50),
      title: Text(videojuegosName),
      subtitle: Text('Mis Videojuegos Favoritos'),
      trailing: Icon(Icons.videogame_asset),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
    );
  }
}
