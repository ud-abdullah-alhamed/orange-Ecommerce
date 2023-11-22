import 'package:flutter/material.dart';

final ThemeData asthaTutorialTheme = _asthaTutorialTheme();

ThemeData _asthaTutorialTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: const Color(0xffFF7643),
      onPrimary: const Color(0xffFF7643),
      secondary: const Color.fromARGB(255, 223, 27, 12),
      onSecondary: Colors.white,
      background: const Color.fromARGB(255, 228, 243, 228),
      onBackground: Colors.black,
    ),
  );
}
