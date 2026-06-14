

import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: const BorderSide(color: AppColor.dividerGrey, width: 2),
              activeColor: AppColor.green500,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                children: const [
                  TextSpan(
                    text: 'من خلال إنشاء حساب، فإنك توافق على ',
                    style: AppStyle.grey13SemiBold,
                  ),
                  TextSpan(
                    text: 'الشروط \nوالأحكام الخاصة بنا',
                    style: AppStyle.green13semiBold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
