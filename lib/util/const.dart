import 'package:flutter/material.dart';

class Constants {
  static String appName = "Flutter Travel";

  //Colors for theme
  static Color lightPrimary = Color.fromARGB(255, 0, 0, 0);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey;
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Color.fromARGB(255, 208, 12, 12);
  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightAccent),
    textSelectionTheme: TextSelectionThemeData(cursorColor: lightAccent),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
