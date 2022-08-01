import 'package:flutter/material.dart';

class ProductTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.red,
    ),
  );
}
