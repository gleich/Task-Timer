// 📱 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  ThemeData get darkTheme => ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: _SharedValues.fontFamily,
      );

  ThemeData get lightTheme => ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: _SharedValues.fontFamily,
      );
}

class _SharedValues {
  static const fontFamily = 'Tomorrow';
}
