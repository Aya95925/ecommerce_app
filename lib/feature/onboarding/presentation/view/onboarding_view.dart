import 'package:ecommerce_app/feature/onboarding/presentation/widget/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnboardingViewBody()));
  }
}
