import 'package:flutter/material.dart';

class MyTheme {
  static Color primarylight = Color.fromARGB(255, 183, 147, 95);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primarylight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
          AppBarTheme(elevation: 0, backgroundColor: Colors.transparent),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black87),
          titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          titleSmall:
              TextStyle(fontSize: 25,fontWeight: FontWeight.w400, color: Colors.black87)),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(selectedItemColor: Colors.black87));
}
