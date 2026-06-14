import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerSocialMedia extends StatelessWidget {
  const CustomContainerSocialMedia({
    super.key,
    required this.image,
    required this.text,
  });
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: AppColor.dividerGrey),
      ),
      child: Row(
        children: [
          SvgPicture.asset(image, height: 28),
          Expanded(
            child: Center(
              child: Text(
                text,
                style: AppStyle.greyScale23SemiBold.copyWith(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

