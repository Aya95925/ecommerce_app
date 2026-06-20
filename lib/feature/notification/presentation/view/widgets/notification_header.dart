import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/notification/presentation/view/widgets/custom_badge.dart';
import 'package:flutter/material.dart';

class NotificationHeader extends StatelessWidget {
  final int notificationCount;
  final String text;

  const NotificationHeader({
    super.key,
    required this.notificationCount,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBadge(notificationCount: notificationCount, text: text),
        Text('تحديد الكل مقروء', style: AppStyle.greyScale400Regular16),
      ],
    );
  }
}
