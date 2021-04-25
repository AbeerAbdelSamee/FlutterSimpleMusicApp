import 'package:flutter/material.dart';
import 'global_colors.dart';

class GlobalStyles {
  static EdgeInsetsGeometry calculateAppPadding(padding) {
    return EdgeInsets.only(left: padding);
  }

  static EdgeInsetsGeometry APP_PADING = EdgeInsets.only(left: 10, right: 10);
}
