import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.time,
  });
  final String text1, text2, text3, time;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: CircleAvatar(
            radius: 30,
            child: SvgPicture.asset(
              image,
              width: 66,
              height: 66,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 13),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: text1, style: AppStyle.grey16SemiBold),
                TextSpan(text: text2, style: AppStyle.red16Semibold),
                TextSpan(text: text3, style: AppStyle.grey16SemiBold),
              ],
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
        const SizedBox(width: 12),

        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(time, style: AppStyle.grey13Regular),
        ),
      ],
    );
  }
}
