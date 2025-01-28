import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Основные цвета
  static const Color primary = Color.fromRGBO(
      237, 63, 64, 1); // Основной акцентный цвет (яркий красный).
  static const Color onPrimary =
      Color.fromRGBO(255, 255, 255, 1); // Цвет текста/иконок на основном цвете.

  static const Color secondary = Color.fromRGBO(
      156, 155, 152, 1); // Вторичный цвет для менее заметных акцентов.
  static const Color onSecondary = Color.fromRGBO(
      255, 255, 255, 1); // Цвет текста/иконок на вторичном цвете.

  static const Color surface = Color.fromRGBO(
      219, 217, 212, 1); // Цвет поверхностей (карточек, диалогов).
  static const Color onSurface =
      Color.fromRGBO(18, 18, 18, 1); // Цвет текста/иконок на поверхностях.

  static const Color error = Color.fromRGBO(
      211, 47, 47, 1); // Цвет ошибок (можно выбрать близкий к Material).
  static const Color onError = Color.fromRGBO(
      255, 255, 255, 1); // Цвет текста/иконок на ошибочных элементах.

  static const Color outline =
      Color.fromRGBO(156, 155, 152, 1); // Цвет разделителей и границ.

  // Тема приложения
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      surface: surface,
      onSurface: onSurface,
      error: error,
      onError: onError,
      outline: outline,
    ),
    scaffoldBackgroundColor: surface,
    fontFamily: GoogleFonts.nunito.toString(),
  );
}
