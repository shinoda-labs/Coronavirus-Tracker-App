import 'package:flutter/material.dart';
class ColorsConstants{

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Color(0xff313131);
  static Color lightAccent = Color(0xffd44336);
  static Color darkAccent = Color(0xffd44336);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Color(0xff121212);

  static Color casesColor = Color(0xffffeb3b);
  static Color casesSuspectColor = Color(0xfffbc02d);
  static Color casesConfirmedColor = Color(0xfff57f17);
  static Color deathsColor = Color(0xffff3d00);
  static Color recoveredColor = Color(0xff00c853);

  static bool isDark = true;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: lightAccent,
//      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: darkAccent,
//      ),
    ),
  );


}