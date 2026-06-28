import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/Custom_notifacaton_container.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.onPressed,
    required this.showBackButton, required this.showNotificationIcon,
  });
  final String text;
  final Function()? onPressed;
  final bool showBackButton;
  final bool showNotificationIcon;
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Stack(
        children: [
          Center(child: Text(text, style: AppStyle.grey19Bold)),

          Positioned(
            left: 0,
            child:showNotificationIcon? CustomNotifacationContainer(onPressed: onPressed):SizedBox(),
          ),

          Positioned(
            right: 0,
            child: showBackButton
                ? Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFF1F1F5),
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: onPressed,
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.greyScale950,
                      ),
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
