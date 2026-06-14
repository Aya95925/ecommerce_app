import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomContainerButtom extends StatelessWidget {
  const CustomContainerButtom({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: ShapeDecoration(
        color: AppColor.green500,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyle.white16Bold,
          ),
        ),
      ),
    );
  }
}
