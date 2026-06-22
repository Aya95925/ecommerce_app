import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/feature/notification/presentation/view/widgets/custom_list_view_notification_tile.dart';
import 'package:ecommerce_app/feature/notification/presentation/view/widgets/notification_header.dart';
import 'package:flutter/material.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomAppBar(text: 'الاشعارات', showBackButton: true),
            SizedBox(height: 20),
            NotificationHeader(notificationCount: 2, text: 'جديد'),
            SizedBox(height: 11),
            CustomListViewNotificationTile(),
            SizedBox(height: 11),
            NotificationHeader(notificationCount: 2, text: 'في وقت سابق'),
            SizedBox(height: 28),
            CustomListViewNotificationTile(),
          ],
        ),
      ),
    );
  }
}
