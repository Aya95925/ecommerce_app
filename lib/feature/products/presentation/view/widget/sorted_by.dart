import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/bottom_sheet_drag_handel.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/custom_ratio_list_tile.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/filter_submit_buttom.dart';
import 'package:flutter/material.dart';

class SortedBy extends StatefulWidget {
  const SortedBy({super.key});

  @override
  State<SortedBy> createState() => _SortedByState();
}

class _SortedByState extends State<SortedBy> {
  String _selectedOption = 'lowest_price';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 25,
          bottom: MediaQuery.of(context).viewInsets.bottom + 25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetDragHandle(),
            const SizedBox(height: 26),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'ترتيب حسب :',
                style: AppStyle.greyScale16Bold.copyWith(fontSize: 19),
              ),
            ),
            const SizedBox(height: 11),
            RadioGroup<String>(
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              child: Column(
                children: [
                  CustomRatioListTile(
                    text: 'السعر ( الأقل إلى الأعلى )',
                    value: 'lowest_price',
                  ),

                  CustomRatioListTile(
                    text: 'السعر ( الأعلى إلى الأقل )',
                    value: 'highest_price',
                  ),
                  CustomRatioListTile(text: 'الأبجدية', value: 'alphabetical'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            FilterSubmitButton(
              onPressed: () {
                Navigator.pop(context, _selectedOption);
              },
            ),
          ],
        ),
      ),
    );
  }
}

