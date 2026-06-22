import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterButtonIcon extends StatelessWidget {
  const FilterButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColor.greyWithOpacity40.withAlpha(100)),
      ),
      child: Center(
        child: SvgPicture.asset(Assets.assetsImagesArrowSwapHorizontal),
      ),
    );
  }
}

