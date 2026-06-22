import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomRatioListTile extends StatelessWidget {
  const CustomRatioListTile({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      title: Text(text, style: AppStyle.greyScale16Bold.copyWith(fontSize: 13)),
      value: value,
      activeColor: AppColor.green500,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }
}
