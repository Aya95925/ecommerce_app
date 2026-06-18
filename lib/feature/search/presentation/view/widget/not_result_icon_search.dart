import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';


class NotResultIconSearch extends StatelessWidget {
  const NotResultIconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.assetsImagesIllustrations),
          const SizedBox(height: 44),
          Text('البحث', style: AppStyle.greyScale16Bold),
          const SizedBox(height: 7),
          Text(
            'عفوًا... هذه المعلومات غير متوفرة للحظة',
            style: AppStyle.greyScale400Regular16.copyWith(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}