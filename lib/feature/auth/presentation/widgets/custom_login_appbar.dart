import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomLoginAppBar extends StatelessWidget {
  const CustomLoginAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
    
          child: Center(
            child: Text('تسجيل دخول', style: AppStyle.grey19Bold),
          ),
        ),
    
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios, size: 20),
          ),
        ),
      ],
    );
  }
}
