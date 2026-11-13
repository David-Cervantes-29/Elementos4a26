// El tema define Colores, Estilos y Fuentes para la App
// Constante de Tema
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: const Color.fromARGB(250, 15, 7, 250),
      titleTextStyle: GoogleFonts.indieFlowerTextTheme(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
