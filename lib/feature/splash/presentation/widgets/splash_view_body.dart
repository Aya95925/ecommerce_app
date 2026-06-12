import 'package:ecommerce_app/core/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppAssets.assetsImagesFreepikPlantInject63),
          ],
        ),
        SvgPicture.asset(AppAssets.assetsImagesSplashImage),
        Row(
          children: [
            SvgPicture.asset(
              AppAssets.assetsImagesFreepikCirclesInject5,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ],
    );
  }
}
