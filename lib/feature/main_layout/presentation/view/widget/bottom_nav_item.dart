import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String image;
  final String label;

  const BottomNavItem({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
      decoration: BoxDecoration(
        color: AppColor.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: AppColor.green500,
              shape: BoxShape.circle,
            ),
            child: Center(child: SvgPicture.asset(image, height: 16)),
          ),
          const SizedBox(width: 8),
          Text(label, style: AppStyle.green11semiBold),
        ],
      ),
    );
  }
}
