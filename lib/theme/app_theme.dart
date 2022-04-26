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
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primary,
      elevation: 10.0
    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: _primary,
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
        borderRadius: BorderRadius.only( 
          bottomLeft: Radius.circular(10.0), 
          topRight: Radius.circular(10.0)
        )
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _primary
        ),
        borderRadius: BorderRadius.only( 
          bottomLeft: Radius.circular(10.0) ,
          topRight: Radius.circular(10.0), 
        )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( 
          bottomLeft: Radius.circular(10.0) ,
          topRight: Radius.circular(10.0)
        )
      )
    )

  );

  static Color get primary => _primary;
}
