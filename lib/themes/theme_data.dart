import 'package:flutter/material.dart';
import 'package:top_store/themes/colors.dart';

//light mode scheme
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: bgLight,
    primary: Colors.black,
    secondary: Colors.orange,
    tertiary: Colors.grey[400]
  )
);

//dark mode scheme
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: bgDark,
    primary: Colors.white,
    secondary: Colors.orange,
    tertiary: Colors.grey[900],
  )
);