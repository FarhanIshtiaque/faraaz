import 'package:faraaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: 'DMSans',
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleSpacing: 24,
    color: Colors.white,
    elevation: 1,
    toolbarHeight: 70,
    shadowColor: AppColors.gray50,
    centerTitle: false,
    iconTheme: IconThemeData(
      color: AppColors.gray900,
    ),
    titleTextStyle: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
  );
}
