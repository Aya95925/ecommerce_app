
import 'package:ecommerce_app/core/widgets/more_popular.dart';

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
            CustomAppBar(text: 'الأكثر مبيعًا', showBackButton: true, showNotificationIcon: true,),
            SizedBox(height: 24),
           MorePopular(isShowMore: false,)
          ],
        ),
      ),
    );
  }
}

