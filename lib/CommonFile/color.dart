import 'package:flutter/material.dart';

class ThemeColor {
  static final primary = Color.fromRGBO(0, 128, 105, 1);
  static final primarySwatch =
      MaterialColor(Color.fromRGBO(0, 128, 105, 1).value, const {
    50: Color.fromRGBO(0, 128, 105, 0.1),
    100: Color.fromRGBO(0, 128, 105, 0.2),
    200: Color.fromRGBO(0, 128, 105, 0.3),
    300: Color.fromRGBO(0, 128, 105, 0.4),
    400: Color.fromRGBO(0, 128, 105, 0.5),
    500: Color.fromRGBO(0, 128, 105, 0.6),
    600: Color.fromRGBO(0, 128, 105, 0.7),
    700: Color.fromRGBO(0, 128, 105, 0.8),
    800: Color.fromRGBO(0, 128, 105, 0.9),
    900: Color.fromRGBO(0, 128, 105, 1.0),
  });
  static final secondary = Color.fromRGBO(255, 250, 244, 1);
  static final backgroundColor = Color.fromRGBO(237, 232, 232, 1);
  static final accentColor = Color.fromRGBO(99, 99, 99, 1);
}
