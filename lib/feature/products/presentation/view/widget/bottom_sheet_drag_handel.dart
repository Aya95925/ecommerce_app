import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class BottomSheetDragHandle extends StatelessWidget {
  const BottomSheetDragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 3,
      decoration: BoxDecoration(
        color: AppColor.greyScale950,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

