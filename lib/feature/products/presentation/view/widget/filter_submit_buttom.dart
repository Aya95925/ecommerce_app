import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class FilterSubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FilterSubmitButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 49,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'تصفية',
          style: AppStyle.greyScale16Bold.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

