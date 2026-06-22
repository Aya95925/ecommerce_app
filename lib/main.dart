import 'package:ecommerce_app/feature/main_layout/presentation/view/main_layout_view.dart';
import 'package:ecommerce_app/feature/home/presentation/view/more_popular_view.dart';
import 'package:ecommerce_app/feature/notification/presentation/view/notification_view.dart';
import 'package:ecommerce_app/feature/products/presentation/view/product_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/recent_search_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/search_view.dart';
import 'package:ecommerce_app/feature/search/presentation/view/search_without_result_view.dart';
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
      home:
          // SplashView(),
          // MorePopularView(),
          MainLayoutView(),
          // SearchWithoutResultView()
          // SearchView(),
          // RecentSearchView(),
          // NotificationView()
          // ProductView(),
    );
  }
}
