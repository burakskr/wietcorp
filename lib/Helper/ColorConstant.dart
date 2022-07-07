import 'package:flutter/material.dart';

class ColorConstant {
  static const Color applicationWhite = Colors.white;
  static const Color applicationBlack = Colors.black;
  static const Color applicationRed = Colors.red;

  static final ColorConstant _instance = ColorConstant.init();
  factory ColorConstant() {
    return _instance;
  }

  ColorConstant.init();
}
