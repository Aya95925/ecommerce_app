import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/feature/splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      // ignore: use_build_context_synchronously
      Navigator.push(context, AppRoute.onBoardingRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashViewBody()));
  }
}
