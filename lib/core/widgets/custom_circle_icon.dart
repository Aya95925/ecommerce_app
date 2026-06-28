import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCircleAddIcon extends StatelessWidget {
  const CustomCircleAddIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: AppColor.green500,
        child: Center(child: Icon(icon, color: Colors.white, size: 20)),
      ),
    );
  }
}
