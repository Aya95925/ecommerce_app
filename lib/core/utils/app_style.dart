import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract final class AppStyle {
  static const TextStyle orange23Bold = TextStyle(
    color: AppColor.orange500,
    fontSize: 23,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle grey13SemiBold = TextStyle(
    color: AppColor.greyScale500,
    fontSize: 13,
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
}
