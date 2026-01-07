import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

class Appthemes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Appcolors.scaffoldlight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.buttonlightmode,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Appcolors.textlightmode),
      bodyLarge: TextStyle(color: Appcolors.otptextlight),
    ),
  );

  static final ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: Appcolors.scaffolddark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.buttondarkmode,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Appcolors.textdarkmode),
      bodyLarge: TextStyle(color: Appcolors.textdarkmode),
    ),
  );
}
