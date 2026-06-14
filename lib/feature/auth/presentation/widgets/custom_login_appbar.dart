import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomLoginAppBar extends StatelessWidget {
  const CustomLoginAppBar({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,

          child: Center(child: Text(text, style: AppStyle.grey19Bold)),
        ),

        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_back_ios, size: 20),
          ),
        ),
      ],
    );
  }
}
