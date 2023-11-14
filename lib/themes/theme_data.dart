import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Colors.red;
  static const Color light = Colors.white;
  static const Color dark = Colors.black87;

  static final ThemeData yerodevTheme = ThemeData(
    primaryColor: primary,  
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),
    shadowColor: primary.withOpacity(0.5),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )
  );

  static final ThemeData yerodevDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    iconTheme: const IconThemeData(color: primary)
  );
}