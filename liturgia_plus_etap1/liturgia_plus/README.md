# Liturgia+ — Etap 1: szkielet projektu

## Co zawiera ten etap

- Strukturę katalogów pod Clean Architecture (`core/` + `features/*`).
- `pubspec.yaml` z bibliotekami: Riverpod, GoRouter, google_fonts, image_picker,
  shared_preferences, freezed/json_serializable (przygotowane pod przyszłe modele).
- Motyw Material 3 (`core/theme/`) — granat/niebieski/biel + subtelne złoto.
- Splash Screen z gradientem, logo i cytatem, zgodny ze szkicem.
- Minimalny `HomeScreen` (placeholder) + routing GoRouter (splash → home).

To repozytorium **nie zawiera jeszcze folderów `android/` i `ios/`** — ważne,
żeby te pliki wygenerował Twój lokalny Flutter SDK w wersji zainstalowanej
u Ciebie (unikamy w ten sposób niekompatybilności wersji Gradle/Kotlin/Xcode).

## Jak uruchomić lokalnie

1. Rozpakuj archiwum do folderu, np. `liturgia_plus`.
2. W terminalu, w tym folderze, wygeneruj brakujące pliki platformowe:

   ```bash
   flutter create --org com.twojafirma --project-name liturgia_plus .
   ```

   To polecenie **nie nadpisze** istniejącego `lib/` ani `pubspec.yaml`
   (Flutter pyta o nadpisanie tylko plików, które już istnieją — jeśli o to
   zapyta dla `pubspec.yaml` czy `analysis_options.yaml`, odpowiedz "n",
   żeby zachować naszą konfigurację).

3. Zainstaluj zależności:

   ```bash
   flutter pub get
   ```

4. Uruchom aplikację:

   ```bash
   flutter run
   ```

Powinieneś zobaczyć: gradientowy splash screen z logo i cytatem (ok. 3 sekundy),
a następnie placeholder ekranu głównego z ikoną i napisem.

## Co dalej (Etap 2 — propozycja)

- Onboarding: ekran wpisania imienia + wyboru zdjęcia profilowego (`image_picker`),
  zapis do `shared_preferences`.
- Pełny `HomeScreen` zgodny ze szkicem: nagłówek "Hej, {imię} 👋", sekcja
  "Najważniejsze informacje" (chip-y: Księgi / Czytania / Tutoriale),
  przewijane karty ksiąg liturgicznych.
- Dolna nawigacja (`NavigationBar` Material 3): Home / Księgi / Tutoriale / Profil.

Daj znać, czy chcesz przejść do Etapu 2 w tym kształcie, czy coś zmienić
w tym, co już powstało.
