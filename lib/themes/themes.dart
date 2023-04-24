import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class Themes {
  static ThemeData lightTheme = FlexThemeData.light(
    scheme: FlexScheme.deepPurple,
    // primary: const Color(0xff8315b5),
    // background: Color(0xff114ba8),
    // useMaterial3: true,
    // primary: const Color(0xff8315b5),
    // background: const Color(0xffffffff),
    // onBackground: Color.fromARGB(255, 64, 63, 63),
  );

  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: FlexScheme.deepPurple,
    // primary: const Color(0xff8315b5),
    // useMaterial3: true,
  );
}
