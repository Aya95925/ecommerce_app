import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_notifacaton_container.dart';
import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 44,
              height: 44,
              child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: AppColor.green500,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: -6,
                    bottom: 0,
                    child: Image.asset(
                      Assets.assetsImagesImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 11), // المسافة بين الصورة والكلام

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('صباح الخير !..', style: AppStyle.greyScale400Regular16),
                const SizedBox(height: 4),
                Text(
                  'أحمد مصطفي',
                  style: AppStyle.greyScale23SemiBold.copyWith(fontSize: 16),
                ),
              ],
            ),
          ],
        ),

        CustomNotifacationContainer(onPressed: () {}),
      ],
    );
  }
}
