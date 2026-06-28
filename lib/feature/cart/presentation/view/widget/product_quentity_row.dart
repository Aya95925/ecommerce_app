import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/cart/presentation/view/widget/custom_circle_icon.dart';
import 'package:flutter/material.dart';

class ProductQuantityRow extends StatefulWidget {
  const ProductQuantityRow({super.key});

  @override
  State<ProductQuantityRow> createState() => _ProductQuantityRowState();
}

class _ProductQuantityRowState extends State<ProductQuantityRow> {
  int quantity = 1;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('بطيخ', style: AppStyle.dark13Bold),

        const SizedBox(height: 6),

        Text(
          '3 كم',
          style: AppStyle.orange13Semibold.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 12),
        
        // استخدام spaceBetween يوزع الأزرار في طرف والسعر في الطرف الآخر تلقائيًا
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            // تجميع الأزرار معًا في Row فرعي حتى لا تتشتت بسبب الـ spaceBetween
            Row(
              children: [
                CustomCircleIcon(icon: Icons.add, onTap: _increment),
                const SizedBox(width: 16),
                Text('$quantity', style: AppStyle.greyScale16Bold),
                const SizedBox(width: 16),
                CustomCircleIcon(icon: Icons.remove, onTap: _decrement),
              ],
            ),

            // السعر سيندفع تلقائيًا لأقصى الطرف الآخر المتاح
            Text('60 جنيه ', style: AppStyle.orange16Bold),
          ],
        ),
      ],
    );
  }
}