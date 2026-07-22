import 'package:flutter/material.dart';

/// Centralna paleta kolorów Liturgia+.
///
/// Motyw: granat + niebieski + biel, z subtelnymi złotymi akcentami
/// (używanymi oszczędnie, np. na okładkach ksiąg liturgicznych, ikonach
/// wyróżnień). Kolory nie są używane bezpośrednio w widgetach — zawsze
/// poprzez [AppTheme] / `Theme.of(context).colorScheme`, żeby w
/// przyszłości łatwo dodać tryb ciemny.
class AppColors {
  const AppColors._();

  // Granat — kolor bazowy, tła gradientów, splash screen.
  static const Color navyDark = Color(0xFF0A1F44);
  static const Color navy = Color(0xFF102A56);

  // Niebieski — kolor przewodni (primary).
  static const Color blue = Color(0xFF1E5FBF);
  static const Color blueLight = Color(0xFF4A82D6);

  // Biel / tła jasne.
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF7F8FB);
  static const Color surface = Color(0xFFFFFFFF);

  // Złoto — subtelne akcenty (odznaki, ulubione, okładki ksiąg).
  static const Color gold = Color(0xFFC9A227);
  static const Color goldLight = Color(0xFFE3C878);

  // Neutralne / tekstowe.
  static const Color textPrimary = Color(0xFF1A1C1E);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color divider = Color(0xFFE5E7EB);

  static const Color error = Color(0xFFB3261E);

  /// Gradient tła splash screena — od jasnego niebieskiego do głębokiego
  /// granatu, zgodnie ze szkicem.
  static const LinearGradient splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [blue, navyDark],
  );
}
