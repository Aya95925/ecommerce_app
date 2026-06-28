import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  const CustomCircleIcon({super.key, required this.icon, this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 12,
        backgroundColor: AppColor.green500,
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }
}