import 'package:ecommerce_app/feature/home/presentation/view/widgets/product_card.dart';
import 'package:flutter/material.dart';

class GridViewSearch extends StatelessWidget {
  const GridViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return const ProductCard();
      },
    );
  }
}
