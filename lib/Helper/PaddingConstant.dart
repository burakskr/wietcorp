import 'package:flutter/cupertino.dart';

class PaddingConstant {
  static final EdgeInsets applicationAllPadding20 = EdgeInsets.all(20);
  static final PaddingConstant _instance = PaddingConstant.init();
  factory PaddingConstant() {
    return _instance;
  }

  PaddingConstant.init();
}
