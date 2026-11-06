import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> videojuegoss = const {
    'Call of Duty Morden Warfare 4': 'assets/img/COD.png',
    'Gears of War E-DAY': 'assets/img/GEARS.png',
    'Fortnite': 'assets/img/Fortnite.png',
    'Minecraft': 'assets/img/Minecraft.png',
    'FC 27': 'assets/img/EA.png',
  };

  final Map<String, String> juegosnintendos = const {
    'Super Mario Bros': 'assets/img/Super_Mario_Bros.png',
    'Mario Strikers': 'assets/img/Mario_Strikers.png',
    'Splatoon 2': 'assets/img/Splatoon2.png',
    'Super Mario Maker 2': 'assets/img/Mario_Maker2.png',
    'Luigi Masions': 'assets/img/luigi_mansion.png',
  };

  final Map<String, String> tarjetagraficas = const {
    'NVIDIA RTX 5050': 'assets/img/RTX5050.png',
    'NVIDIA RTX 4050': 'assets/img/RTX4050.png',
    'NVIDIA RTX 3050': 'assets/img/RTX3050.png',
    'NVIDIA RTX 2050': 'assets/img/RTX2050.png',
    'NVIDIA RTX 1050': 'assets/img/RTX1050.png',
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
    'Luigi Masions',
  ];

  final tarjetagrafica = const [
    'NVIDIA RTX 5050',
    'NVIDIA RTX 4050',
    'NVIDIA RTX 3050',
    'NVIDIA RTX 2050',
    'NVIDIA RTX 1050',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...videojuegoss.entries.map((videojuegoss) {
            return _tileVideojuegos(
              videojuegoss.key,
              videojuegoss.value,
              Color.fromARGB(255, 0, 133, 250),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            );
          }),

          Divider(),
          ...juegosnintendos.entries.map((juego) {
            return _tilejuegosNintendo(
              juego.key,
              juego.value,
              Color.fromARGB(255, 250, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            );
          }),

          Divider(),
          ...tarjetagraficas.entries.map((tarjeta) {
            return _tiletarjetagrafica(
              tarjeta.key,
              tarjeta.value,
              Color.fromARGB(255, 8, 250, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            );
          }),
        ],
      ),
    );
  }

  Widget _tileVideojuegos(
    String videojuegosName,
    String videojuegoImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(videojuegoImage, width: 50, height: 50),
      title: Text(videojuegosName),
      subtitle: Text("Mis juegos favoritos"),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final espacio = SizedBox(height: 10);

    return Column(children: [tile, espacio]);
  }

  Widget _tilejuegosNintendo(
    String juegosnintendoName,
    String juegosnintendoImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(juegosnintendoImage, width: 50, height: 50),
      title: Text(juegosnintendoName),
      subtitle: Text("Juegos de Nintendo"),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final espacio = SizedBox(height: 10);

    return Column(children: [tile, espacio]);
  }

  Widget _tiletarjetagrafica(
    String tarjetaName,
    String tarjetaImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Icon(Icons.memory, size: 50),
      title: Image.asset(tarjetaImage, width: 50, height: 50),
      subtitle: Text("Tarjetas gráficas"),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final espacio = SizedBox(height: 10);

    return Column(children: [tile, espacio]);
  }
}
