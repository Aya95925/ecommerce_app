import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_grid_view_prosuct_card.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class MorePopularBody extends StatelessWidget {
  const MorePopularBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(text: 'الأكثر مبيعًا'),
            SizedBox(height: 24),
            Text('الأكثر مبيعًا', style: AppStyle.greyScale16Bold),
            SizedBox(height: 8),
            CustomGridViewProductCard(),
          ],
        ),
      ),
    );
  }
}
