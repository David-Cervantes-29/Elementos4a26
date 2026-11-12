import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  //variables para almacenar los valores de entrada
  bool _switchValue = false;
  double _slideVlaue = 0.0;
  TextEditingController _textController = TextEditingController();
  int radioSelected =
      0; // Variable para almacenar el valor seleccionado del radio button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5 ')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entrada de Datos'),
          //Lamadas a los widget de entrada de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider(),
          _entradaRadio(),
        ],
      ),
    );
  }

  // 8 + 5 + 5 + 6  = 24
  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      obscureText: true,
      obscuringCharacter: '👽',
      maxLength: 130,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Escribe tu nombre',
        border: UnderlineInputBorder(),
      ),
      onChanged: (value) {
        print('valor del TextField: $value');
      },
    );
  }

  Row _entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te Gusta Flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
              print('El Valor de Swwitch es: $_switchValue');
            }); // Accion al cambiar el switch
          },
        ),
      ],
    );
  }

  Column _entradaSlider() {
    return Column(
      children: [
        Text('Indica que tanto te gusta Flutter: '),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: const Color.fromARGB(255, 2, 86, 255),
          thumbColor: Colors.blueGrey,
          value: _slideVlaue,
          divisions: 10,
          label: '${_slideVlaue.round()}',
          onChanged: (value) {
            setState(() {
              _slideVlaue = value;
              print('Se Cambio el Slider: $_slideVlaue');
            });
          },
        ),
      ],
    );
  }

  Column _entradaRadio() {
    final ListTile kotlin = ListTile(
      title: const Text('Kotlin'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 1,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del Boton Radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile Flutter = ListTile(
      title: const Text('Flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 2,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del Boton Radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile ReactNative = ListTile(
      title: const Text('React Native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 3,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del Boton Radio: $radioSelected');
            });
          },
        ),
      ),
    );

    return Column(
      children: [
        Text('¿Que Prefieres para Desarrollo Movil?'),
        kotlin,
        Flutter,
        ReactNative,
      ],
    );
  }
}
