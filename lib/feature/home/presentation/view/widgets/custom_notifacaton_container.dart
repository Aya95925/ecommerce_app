import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomNotifacationContainer extends StatelessWidget {
  const CustomNotifacationContainer({super.key,  this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColor.green50,
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.greyBorder, width: 1),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.notifications_outlined, color: AppColor.green500),
      ),
    );
  }
}
