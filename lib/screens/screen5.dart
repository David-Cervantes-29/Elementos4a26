import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screen6.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  // Variables para almacenar los valores de entrada
  bool _switchValue = false;
  double _sliderValue = 0.0;
  final TextEditingController _textController = TextEditingController();
  int radioSelected = 0;
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entradas de datos'),
          // Llamas a los Widgets de entradas de datos
          _entradadeTexto(),
          _entradaSwitch(),
          _entradaSlider(),
          _entradaRadio(),
          _entradaCheck(),
          ElevatedButton(onPressed: _guardar, child: Text('Guardar')),
        ],
      ),
    );
  }

  TextField _entradadeTexto() {
    return TextField(
      controller: _textController,
      obscureText: false,
      maxLength: 128,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: UnderlineInputBorder(),
      ),
      onChanged: (value) {
        print('Valor del TextField; $value');
      },
    );
  }

  Row _entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te gusta flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
              print('El valor del Switch es: $_switchValue');
            }); //Acción al cambiar el switch
          },
        ),
      ],
    );
  }

  Column _entradaSlider() {
    return Column(
      children: [
        Text('Indica que teanto te gusta flutter: '),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: Colors.blueAccent,
          thumbColor: const Color.fromARGB(255, 12, 4, 235),
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              print('Se cambio el slider: $_sliderValue');
            }); // Accion al cambiar el slider
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
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile flutter = ListTile(
      title: const Text('Flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 2,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile reactNative = ListTile(
      title: const Text('React Native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 3,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    return Column(
      children: [
        Text('¿Que prefieres para desarrollo movíl?'),
        kotlin,
        flutter,
        reactNative,
      ],
    );
  }

  Column _entradaCheck() {
    final Text pregunta = Text('¿Que usas para correr tus apps?');
    final Row checks = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // CheckBox 1
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: _ischecked1,
            onChanged: (value) {
              setState(() {
                _ischecked1 = value!;
                print('Cehckbox 1: $_ischecked1');
              });
            },
          ),
        ),
        Text('Emulador'),

        // ChecKBox 2
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: _ischecked2,
            onChanged: (value) {
              setState(() {
                _ischecked2 = value!;
                print('Cehckbox 2: $_ischecked2');
              });
            },
          ),
        ),
        Text('Smartphone'),

        // CheckBox 3
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: _ischecked3,
            onChanged: (value) {
              setState(() {
                _ischecked3 = value!;
                print('Cehckbox 3: $_ischecked3');
              });
            },
          ),
        ),
        Text('Navegador Web'),
      ],
    );
    return Column(children: [pregunta, checks]);
  }

  void _guardar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen6(
          nombre: _textController.text,
          gustaFlutter: _switchValue,
          nivelFlutter: _sliderValue,
          radioSelected: radioSelected,
          emulador: _ischecked1,
          smartphone: _ischecked2,
          navegadorWeb: _ischecked3,
        ),
      ),
    );
  }
}
