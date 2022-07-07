import 'package:flutter/material.dart';
import 'package:wietcorp/Helper/ColorConstant.dart';

class ThemeCollection {
  static final ThemeCollection _instance = ThemeCollection.init();

  static final ThemeData themelight = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstant.applicationWhite,
      centerTitle: true,
    ),
  );

  //Singleton Factory
  factory ThemeCollection() {
    return _instance;
  }
  ThemeCollection.init();
}
