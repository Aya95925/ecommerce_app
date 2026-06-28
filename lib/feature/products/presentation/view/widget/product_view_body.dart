import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_text_form_field.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_grid_view_prosuct_card.dart';

import 'package:ecommerce_app/feature/products/presentation/view/widget/my_product.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomAppBar(
              text: 'المنتجات',
              showBackButton: false,
              showNotificationIcon: true,
            ),
            SizedBox(height: 20),
            CustomSearchTextFormField(),
            SizedBox(height: 16),
            MyProduct(text: '4 نتائج'),
            SizedBox(height: 8),
            CustomGridViewProductCard(),
            // MyProduct(text: 'منتجاتنا'),
            // SizedBox(height: 8),
            // CustomListViewMyProductItem(),
            // SizedBox(height: 16),
            // MorePopular(isShowMore: true),
          ],
        ),
      ),
    );
  }
}
