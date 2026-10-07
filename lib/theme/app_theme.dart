import 'package:flutter/material.dart';

class AppTheme {
  // ==============================
  // PALETA DE CORES
  // ==============================

  // Azul-petróleo principal
  static const Color primary = Color(0xFF164E63);

  // Verde-petróleo secundário
  static const Color secondary = Color(0xFF0F766E);

  // Verde-menta para destaques
  static const Color accent = Color(0xFF14B8A6);

  // Fundo um pouco mais escuro para melhorar o contraste
  static const Color background = Color(0xFFEAF1F3);

  // Fundo dos cards
  static const Color surface = Color(0xFFFFFFFF);

  // Texto principal
  static const Color textPrimary = Color(0xFF172B3A);

  // Texto secundário mais escuro para facilitar a leitura
  static const Color textSecondary = Color(0xFF455A64);

  // Verde para mensagens de sucesso
  static const Color success = Color(0xFF2E7D32);

  // ==============================
  // TEMA PRINCIPAL
  // ==============================

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    ).copyWith(
      primary: primary,
      onPrimary: Colors.white,

      secondary: secondary,
      onSecondary: Colors.white,

      surface: surface,
      onSurface: textPrimary,

      surfaceTint: Colors.transparent,
    ),

    // ==============================
    // FUNDO GERAL
    // ==============================

    scaffoldBackgroundColor: background,

    // ==============================
    // APP BAR
    // ==============================

    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,

      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),

    // ==============================
    // BOTÕES
    // ==============================

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 1,

        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 13,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    // ==============================
    // CARDS
    // ==============================

    cardTheme: CardThemeData(
      color: surface,
      elevation: 2,

      shadowColor: primary.withValues(
        alpha: 0.12,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),

      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
    ),

    // ==============================
    // ÍCONES
    // ==============================

    iconTheme: const IconThemeData(
      color: primary,
    ),

    // ==============================
    // TEXTOS
    // ==============================

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
      ),

      titleLarge: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
      ),

      titleMedium: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.w600,
      ),

      bodyLarge: TextStyle(
        color: textPrimary,
      ),

      bodyMedium: TextStyle(
        color: textSecondary,
      ),
    ),

    // ==============================
    // CAMPOS DE TEXTO
    // ==============================

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: accent,
          width: 2,
        ),
      ),
    ),

    // ==============================
    // SNACKBAR
    // ==============================

    snackBarTheme: SnackBarThemeData(
      backgroundColor: primary,

      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      behavior: SnackBarBehavior.floating,
    ),

    // ==============================
    // DIVISORES
    // ==============================

    dividerTheme: DividerThemeData(
      color: textSecondary.withValues(
        alpha: 0.20,
      ),
      thickness: 1,
    ),
  );
}