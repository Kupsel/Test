import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_colors.dart';

/// Ekran powitalny wyświetlany przy każdym uruchomieniu aplikacji.
///
/// Odpowiedzialność ograniczona wyłącznie do prezentacji: logo, cytatu
/// i płynnego przejścia dalej. Docelowa trasa (np. onboarding vs. home)
/// będzie decydowana w [SplashController] w kolejnym etapie — na razie
/// zawsze przechodzimy do ekranu głównego.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();

    _scheduleNavigation();
  }

  void _scheduleNavigation() {
    Future.delayed(AppConstants.splashMinDuration, () {
      if (!mounted) return;
      context.goNamed(AppRoutes.home);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppColors.splashGradient),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeIn,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppConstants.appName,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppConstants.splashQuote,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.white.withOpacity(0.9),
                            height: 1.4,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
