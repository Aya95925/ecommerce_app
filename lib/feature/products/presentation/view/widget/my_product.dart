import 'package:ecommerce_app/feature/products/presentation/view/widget/filter_button_icon.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/sorted_by.dart';
import 'package:flutter/material.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(text),

        InkWell(
          onTap: () => _showFilterBottomSheet(context),
          child: const FilterButtonIcon(),
        ),
      ],
    );
  }

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => const SortedBy(),
    );
  }
}
