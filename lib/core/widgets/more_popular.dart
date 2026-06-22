import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_grid_view_prosuct_card.dart';
import 'package:flutter/material.dart';

class MorePopular extends StatelessWidget {
  const MorePopular({super.key, this.onTap, required this.isShowMore});
  final Function()? onTap;
  final bool isShowMore;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('الأكثر مبيعًا', style: AppStyle.greyScale16Bold),
            InkWell(
              onTap: onTap,
              child: isShowMore
                  ? Text('المزيد', style: AppStyle.grey13Regular)
                  : SizedBox(),
            ),
          ],
        ),
        SizedBox(height: 12),
        CustomGridViewProductCard(),
      ],
    );
  }
}
