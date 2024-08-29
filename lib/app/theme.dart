import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: HexColor('#FFFFFF'),
    primary: HexColor('#2CA3FA'),
    secondary: HexColor('#FFC107'),
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
);
