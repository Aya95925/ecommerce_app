import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (context.mounted) {
            Navigator.of(context).pop();
          }
        });
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.assetsImagesCorrect),
                const SizedBox(height: 29),
                const Text(
                  'تم تغيير الباسوورد بنجاح',
                  style: AppStyle.greyScale16Bold,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
