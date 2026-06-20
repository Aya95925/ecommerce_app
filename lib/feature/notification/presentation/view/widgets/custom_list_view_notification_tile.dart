import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/feature/notification/presentation/view/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class CustomListViewNotificationTile extends StatelessWidget {
  const CustomListViewNotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: NotificationTile(
            text1: 'خصم ',
            text2: '50%',
            text3: ' علي اسعار الفواكه بمناسبه العيد',
            image: Assets.assetsImagesFacebookIcons,
            time: '9 صباحاً',
          ),
        );
      },
    );
  }
}
