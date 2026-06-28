import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract final class AppStyle {
  static const TextStyle orange23Bold = TextStyle(
    color: AppColor.orange500,
    fontSize: 23,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle orange13Semibold = TextStyle(
    color: AppColor.orange500,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle orange16Bold = TextStyle(
    color: AppColor.orange500,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle grey16SemiBold = TextStyle(
    color: Color(0xff323232),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle red16Semibold = TextStyle(
    color: AppColor.red,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle greyScale23SemiBold = TextStyle(
    color: AppColor.greyScale950,
    fontSize: 23,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
   static const TextStyle dark13Bold = TextStyle(
    color: AppColor.dark,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  
  

    static const TextStyle greyScale13SemiBold = TextStyle(
    color: AppColor.greyScale950,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle greyScale16Bold = TextStyle(
    color: AppColor.greyScale950,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle grey13SemiBold = TextStyle(
    color: AppColor.greyScale500,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle greyScale60016SemiBold = TextStyle(
    color: AppColor.greyScale600,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle grey13Regular = TextStyle(
    color: AppColor.greyScale400,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle white16Bold = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle grey19Bold = TextStyle(
    color: AppColor.greyScale950 /* Grayscale-950 */,
    fontSize: 19,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle green13semiBold = TextStyle(
    color: AppColor.green500,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 1.70,
  );
  static const TextStyle green11semiBold = TextStyle(
    color: AppColor.green500,
    fontSize: 11,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle greyScale400Regular16 = TextStyle(
    color: AppColor.greyScale400,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
  );
}
