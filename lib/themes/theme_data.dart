import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static final ThemeData yerodevTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
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