/// Globalne stałe aplikacji Liturgia+.
///
/// Wszystkie "magiczne liczby" i teksty współdzielone między modułami
/// powinny trafiać tutaj, aby uniknąć duplikacji i ułatwić przyszłe
/// tłumaczenia (i18n) oraz zmiany konfiguracji.
class AppConstants {
  const AppConstants._();

  static const String appName = 'Liturgia+';

  static const String splashQuote =
      'Bóg jest niewidzialny, ale Jego ślady są widoczne w całym stworzeniu.';

  static const Duration splashMinDuration = Duration(seconds: 3);

  static const String prefsKeyUserName = 'user_name';
  static const String prefsKeyUserPhotoPath = 'user_photo_path';
  static const String prefsKeyOnboardingComplete = 'onboarding_complete';
}
