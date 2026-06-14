import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyle.grey13SemiBold.copyWith(
          fontWeight: FontWeight.w700,
        ),
        suffixIcon: suffixIcon,

        filled: true,
        fillColor: AppColor.whittgrey,

        border: buildBorder(),

        enabledBorder: buildBorder(),

        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color color = AppColor.whitegrey1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
