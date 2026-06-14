import 'package:ecommerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:ecommerce_app/feature/auth/presentation/view/reset_your_password_view.dart';
import 'package:ecommerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: ResetYourPasswordView(),
      // LoginView(),
      // SplashView(),
    );
  }
}
