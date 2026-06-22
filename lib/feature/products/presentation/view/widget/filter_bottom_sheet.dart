import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';

import 'package:ecommerce_app/feature/products/presentation/view/widget/bottom_sheet_drag_handel.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/custom_text_form_field_with_controller.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/filter_submit_buttom.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  RangeValues _currentRangeValues = const RangeValues(0, 1000);

  late final TextEditingController _fromController;
  late final TextEditingController _toController;

  @override
  void initState() {
    super.initState();
    _fromController = TextEditingController(
      text: _currentRangeValues.start.toInt().toString(),
    );
    _toController = TextEditingController(
      text: _currentRangeValues.end.toInt().toString(),
    );
  }

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  void _onSliderChanged(RangeValues newValues) {
    setState(() {
      _currentRangeValues = newValues;
      _fromController.text = newValues.start.toInt().toString();
      _toController.text = newValues.end.toInt().toString();
    });
  }

  void _onFieldsChanged() {
    final double start = double.tryParse(_fromController.text) ?? 0;
    final double end = double.tryParse(_toController.text) ?? 1000;

    if (start >= 0 && end <= 1000 && start <= end) {
      setState(() {
        _currentRangeValues = RangeValues(start, end);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
        top: 25,
        bottom: MediaQuery.of(context).viewInsets.bottom + 25,
      ),

      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetDragHandle(),
            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'تصنيف حسب :',
                style: AppStyle.greyScale16Bold.copyWith(fontSize: 19),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: CustomTextFormFieldWithController(
                    controller: _fromController,
                    onChanged: (_) => _onFieldsChanged(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text('إلى', style: AppStyle.greyScale13SemiBold),
                ),
                Expanded(
                  child: CustomTextFormFieldWithController(
                    controller: _toController,
                    onChanged: (_) => _onFieldsChanged(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${_currentRangeValues.start.toInt()}',
                  style: AppStyle.greyScale13SemiBold,
                ),
                Text(
                  '\$${_currentRangeValues.end.toInt()}',
                  style: AppStyle.greyScale13SemiBold,
                ),
              ],
            ),

            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 1000,
              activeColor: AppColor.green500,
              inactiveColor: Colors.grey.shade300,
              labels: RangeLabels(
                _currentRangeValues.start.toInt().toString(),
                _currentRangeValues.end.toInt().toString(),
              ),
              onChanged: _onSliderChanged,
            ),
            const SizedBox(height: 20),

            FilterSubmitButton(onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}



