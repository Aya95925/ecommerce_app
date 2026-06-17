
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/Custom_notifacaton_container.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;
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
            child: CustomNotifacationContainer(onPressed: onPressed),
          ),

          Positioned(
            right: 0,
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFF1F1F5), width: 1),
              ),
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.greyScale950,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

