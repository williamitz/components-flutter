import 'package:flutter/material.dart';

class AppTheme {
  static const Color _primary = Color.fromRGBO(245, 124, 0, 1);

  static const BorderRadius _inputBorder = BorderRadius.only( 
    bottomLeft: Radius.circular(10.0), 
    topRight: Radius.circular(10.0)
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: _primary,
    appBarTheme: const AppBarTheme(backgroundColor: _primary, elevation: 0.0),

    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: _primary
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primary,
      elevation: 10.0
    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primary,
        shape: const StadiumBorder()
      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: _primary,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _primary,          
        ),
        borderRadius: _inputBorder
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _primary
        ),
        borderRadius: _inputBorder
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red
        ),
      ),

      border: OutlineInputBorder(
        borderRadius: _inputBorder
      )
    )

  );

  static Color get primary => _primary;
}
