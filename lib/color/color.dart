import 'package:flutter/material.dart';

const white = Color(0xFFFFFFFF);
const black = Color(0xFF000000);
const grey = Color(0xFFE0E0E0);
const lightGrey = Color(0xFFFAFAFA);
const darkGrey = Color(0xFF424242);
const blue = Color(0xFF2196F3);
const accentColor = Color(0xFF607D8B);

class MyColors {
  static const primary = blue;
  static const secondary = black;
  static const background = white;
  static const text = black;
  static const accent = grey;
  static const lightGreys = lightGrey;
  static const darkGreys = darkGrey;
  static const accentColor = accent;
}

ThemeData buildLightTheme() => ThemeData(
      primaryColor: MyColors.primary,
      hintColor: MyColors.accent,
      scaffoldBackgroundColor: MyColors.background,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        displaySmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        headlineMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        headlineSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        titleLarge: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: MyColors.text,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: MyColors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: MyColors.text,
        ),
      ),
    );
