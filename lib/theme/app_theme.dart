// El tema define Colores, Estilos y Fuentes para la App
// Constante de Tema
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(250, 15, 7, 250),
      titleTextStyle: GoogleFonts.indieFlower(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
