import 'package:ecommerce_app/core/utils/app_assets.dart';
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
          children: [SvgPicture.asset(Assets.assetsImagesFreepikPlantInject)],
        ),
        SvgPicture.asset(Assets.assetsImagesSplashImage),
        SvgPicture.asset(
          Assets.assetsImagesFreepikCirclesInject,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
