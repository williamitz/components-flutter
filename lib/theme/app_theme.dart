import 'package:flutter/material.dart';

class AppTheme {
  static const Color _primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: _primary,
    appBarTheme: const AppBarTheme(backgroundColor: _primary, elevation: 0.0),
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: _primary
      )
    )
  );

  static Color get primary => _primary;
}
