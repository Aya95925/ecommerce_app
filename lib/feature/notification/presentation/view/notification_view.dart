import 'package:ecommerce_app/feature/notification/presentation/view/widgets/notification_view_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: NotificationViewBody()));
  }
}
