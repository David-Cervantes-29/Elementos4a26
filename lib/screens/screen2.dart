import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 2',
          style: TextStyle(color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 50),
            mostrarImagen(2),
            SizedBox(width: 50),
            mostrarImagen(3),
            SizedBox(width: 50),
          ],
        ),
      ),
    );
  }

  Widget mostrarImagen(int numImagen) {
    String nombreImagen = '';
    switch (numImagen) {
      case 1:
        nombreImagen = 'assets/img/Gengar.png';
        break;
      case 2:
        nombreImagen = 'assets/img/Charizard.png';
        break;
      case 3:
        nombreImagen = 'assets/img/Mew.png';
        break;
    }
    return Image.asset(nombreImagen, width: 120, fit: BoxFit.fill);
  }
}
