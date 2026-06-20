import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key, required this.notificationCount, required this.text});
 final int notificationCount;
 final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: AppStyle.greyScale16Bold),
        const SizedBox(width: 4),
        CircleAvatar(
          radius: 11,
          backgroundColor: AppColor.green150,
          child: Text(
            '$notificationCount',
            style: AppStyle.green13semiBold.copyWith(
              fontWeight: FontWeight.bold,
            ), 
          ),
        ),
      ],
    );
  }
}