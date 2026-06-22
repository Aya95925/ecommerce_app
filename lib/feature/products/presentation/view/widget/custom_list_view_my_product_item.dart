import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/feature/products/presentation/view/widget/my_product_item.dart';
import 'package:flutter/material.dart';

class CustomListViewMyProductItem extends StatelessWidget {
  const CustomListViewMyProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .11,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return MyProductItem(
            image: Assets.assetsImagesFacebookIcons,
            title: 'بطيخ',
          );
        },
      ),
    );
  }
}
