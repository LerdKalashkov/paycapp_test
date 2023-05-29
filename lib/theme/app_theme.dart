import 'package:flutter/material.dart';


class AppTheme {
  static const Color background = Color.fromRGBO(54, 36, 184, 1);
  static const Color visa = Color.fromRGBO(15, 110, 254, 1);
  static const Color mastercard = Color.fromRGBO(17, 10, 64, 1);
  static const Color blueBottom = Color.fromRGBO(5, 207, 231, 1);
  static const Color red = Color.fromRGBO(235, 0, 29, 1);
  static const Color redOpacity = Color.fromRGBO(235, 0, 29, .5);
  static const Color yelow = Color.fromRGBO(247, 158, 28, 1);
  static const Color yelowLight = Color.fromRGBO(247, 158, 28, .5);
  static const Color purpleLight = Color.fromRGBO(74, 56, 190, 1);
  static const Color transparent = Color.fromRGBO(225, 225, 225, 0);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color whiteLight = Color.fromRGBO(225, 225, 225, .7);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color grey = Color.fromRGBO(107, 124, 170, 1);
  static const Color gridBackground = Color.fromRGBO(235, 251, 251, 1);
  static const Color gridIcon = Color.fromRGBO(5, 207, 231, 1);
static const Color icons = Color.fromRGBO(4, 203, 232, 1);

  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppTheme.white,
    appBarTheme: const AppBarTheme(
      color: background,
    )
    
  );
}