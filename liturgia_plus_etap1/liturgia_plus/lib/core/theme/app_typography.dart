import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Skala typografii aplikacji, oparta o Material 3 [TextTheme].
///
/// Używamy Poppins (nagłówki — nowoczesny, geometryczny krój, dobrze
/// wygląda na dużych napisach typu "Hej, {imię}") oraz Inter (treść —
/// bardzo dobra czytelność w dłuższych tekstach liturgicznych).
class AppTypography {
  const AppTypography._();

  static TextTheme textTheme(Color baseColor) {
    final TextTheme headingTheme = GoogleFonts.poppinsTextTheme();
    final TextTheme bodyTheme = GoogleFonts.interTextTheme();

    return bodyTheme
        .copyWith(
          displayLarge: headingTheme.displayLarge?.copyWith(color: baseColor),
          displayMedium:
              headingTheme.displayMedium?.copyWith(color: baseColor),
          displaySmall: headingTheme.displaySmall?.copyWith(color: baseColor),
          headlineLarge:
              headingTheme.headlineLarge?.copyWith(color: baseColor),
          headlineMedium: headingTheme.headlineMedium?.copyWith(
            color: baseColor,
            fontWeight: FontWeight.w600,
          ),
          headlineSmall: headingTheme.headlineSmall?.copyWith(
            color: baseColor,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: headingTheme.titleLarge?.copyWith(
            color: baseColor,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: headingTheme.titleMedium?.copyWith(color: baseColor),
          titleSmall: headingTheme.titleSmall?.copyWith(color: baseColor),
        )
        .apply(
          bodyColor: AppColors.textPrimary,
          displayColor: baseColor,
        );
  }
}
