import 'package:flutter/material.dart';

ThemeData get kittyTheme {
  return ThemeData(
    cardColor: Colors.white.withAlpha(80),
    canvasColor: Colors.white,
    textTheme: const TextTheme(
      caption: TextStyle(color: Colors.white70),
    ),
    colorScheme: const ColorScheme.light(
      secondary: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white.withAlpha(80),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        height: 1.2,
        letterSpacing: 0,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey[200]!.withOpacity(0.6),
    ),
  );
}
