import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.teal;
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primaryColor,
      //appbartheme
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 5),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primaryColor,
      //appbartheme
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 5),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)));
}
