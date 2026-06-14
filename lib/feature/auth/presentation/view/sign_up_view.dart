import 'package:ecommerce_app/feature/auth/presentation/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SignUpViewBody()));
  }
}
