import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screen2.dart';
import 'package:flutter_application_2/screens/screen3.dart';
import 'package:flutter_application_2/screens/screen4.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1 ', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 217),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 254, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              boton(
                'Ejemplo de Rows',
                const Color.fromARGB(255, 0, 102, 255),
                context,
                Screen2(),
              ),
              SizedBox(height: 20),
              boton('Ejemplo de ListView', Colors.blue, context, Screen3()),
              SizedBox(height: 20),
              boton(
                'Entrada de Datos',
                const Color.fromARGB(255, 3, 221, 25),
                context,
                Screen4(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    BuildContext context,
    StatelessWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
      ),
      child: Text(texto),
    );
  }
}
