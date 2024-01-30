import 'package:flutter/material.dart';
import 'package:top_store/themes/theme_data.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
  
  // on toggle button
  void toggleThemeMode() {
    // if the mode is on light, change to dark. vice versa
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}