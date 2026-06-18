import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class NotResult extends StatelessWidget {
  const NotResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 36, top: 8),
        child: Text(
          'لاتوجد نتائج بحث...',
          style: AppStyle.greyScale400Regular16.copyWith(fontSize: 13),
        ),
      ),
    );
  }
}