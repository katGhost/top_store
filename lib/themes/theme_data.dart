import 'package:flutter/material.dart';
import 'package:top_store/themes/colors.dart';

//light mode scheme
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: bgLight,
    primary: Colors.black,
    secondary: Colors.deepOrangeAccent,
    tertiary: Colors.grey[300]
  )
);

//dark mode scheme
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: bgDark,
    primary: Colors.white,
    secondary: Colors.deepOrangeAccent,
    tertiary: Colors.grey[900],
  )
);