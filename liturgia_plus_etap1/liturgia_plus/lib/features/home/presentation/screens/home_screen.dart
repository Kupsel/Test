import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';

/// Tymczasowy placeholder ekranu głównego.
///
/// Celowo minimalny — pełna implementacja (profil, sekcja "Najważniejsze
/// informacje", przewijane karty modułów) zostanie zbudowana w kolejnym
/// etapie, razem z profilem użytkownika i dolną nawigacją. Na tym etapie
/// chodzi wyłącznie o potwierdzenie, że routing splash → home działa.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.church_rounded,
              size: 56,
              color: AppColors.navy,
            ),
            const SizedBox(height: 16),
            Text(
              '${AppConstants.appName} — Home (placeholder)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
