import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColor.lightBG,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
      useMaterial3: true,
    );
  }

  ThemeData dark() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.darkBG,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
      useMaterial3: true,
    );
  }
}
