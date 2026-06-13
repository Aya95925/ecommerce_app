import 'package:ecommerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:ecommerce_app/feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:ecommerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

abstract final class AppRoute {
  static final splashRoute = MaterialPageRoute(
    builder: (context) => SplashView(),
  );
  static final onBoardingRoute = MaterialPageRoute(
    builder: (context) => OnboardingView(),
  );
   static final loginView = MaterialPageRoute(
    builder: (context) => LoginView(),
  );
}
