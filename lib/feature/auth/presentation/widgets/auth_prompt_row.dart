
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class AuthPromptRow extends StatelessWidget {
  const AuthPromptRow({super.key, required this.text, required this.buttom, this.onTap});
  final String text, buttom;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyle.grey13SemiBold.copyWith(fontSize: 16)),
        InkWell(
          onTap: onTap,
          child: Text(
            buttom,
            style: AppStyle.green13semiBold.copyWith(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
