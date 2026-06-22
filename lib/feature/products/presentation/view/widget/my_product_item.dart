import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyProductItem extends StatelessWidget {
  const MyProductItem({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: AppColor.grey,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(image, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 2),
          Text(title, style: AppStyle.greyScale13SemiBold),
        ],
      ),
    );
  }
}
