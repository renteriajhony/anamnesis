import 'package:flutter/material.dart';

class CustomThenData {
  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Futura',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        secondary: Colors.blue,
        brightness: Brightness.light,
        primary: const Color(0xFFEDC603),
        onPrimary: Colors.black,
        error: const Color(0xFFFF19A3),
        onError: Colors.black,
        surface: const Color(0xFF10121F), //Color.fromRGBO(16, 18, 31, 1),
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF10121F),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: const Color(0xFFC0C5E0),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Futura Lt BT',
        ),
        iconTheme: IconThemeData(
          color: const Color(0xFFFFFFFF),
          size: 24,
        ),
      ),
      useMaterial3: true,
    );
  }
}
