import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(children: [CustomLoginAppBar()]),
    );
  }
}
