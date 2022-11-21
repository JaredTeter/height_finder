import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Exo',
      scaffoldBackgroundColor: const Color(0xffFFD8AD),
      appBarTheme: const AppBarTheme(
        color: Color(0xffFF9823),
      ),
    );
  }
}
