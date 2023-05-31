import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor:Color.fromARGB(255, 22, 226, 39) ),
    scaffoldBackgroundColor: Color.fromARGB(255, 29, 226, 236));
  
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor:Color.fromARGB(255, 240, 23, 23) ),

    scaffoldBackgroundColor: Color.fromARGB(255, 2, 10, 17));

}
