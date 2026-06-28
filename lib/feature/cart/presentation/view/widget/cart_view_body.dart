import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/feature/cart/presentation/view/widget/cart_item.dart';
import 'package:ecommerce_app/feature/cart/presentation/view/widget/number_of_product_in_cart.dart';

import 'package:flutter/material.dart';
class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: const [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomAppBar(
                  text: 'السلة',
                  showBackButton: true,
                  showNotificationIcon: false,
                ),
              ),
              SizedBox(height: 20),
              NumberOfProductInCart(),
              SizedBox(height: 23),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            return const CartItem();
          }, childCount: 10),
        ),

        const SliverToBoxAdapter(child: Divider(),),
      ],
    );
  }
}
