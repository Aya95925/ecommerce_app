import 'package:ecommerce_app/feature/auth/presentation/widgets/password_recovery_view_body.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:PasswordRecoveryViewBody()));
  }
}
