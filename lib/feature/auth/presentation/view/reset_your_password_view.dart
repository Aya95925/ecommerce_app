import 'package:ecommerce_app/feature/auth/presentation/widgets/reset_your_password_body.dart';
import 'package:flutter/material.dart';

class ResetYourPasswordView extends StatelessWidget {
  const ResetYourPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ResetYourPasswordBody()),);
  }
}