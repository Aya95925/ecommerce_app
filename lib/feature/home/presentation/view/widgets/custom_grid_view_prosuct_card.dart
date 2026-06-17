import 'package:ecommerce_app/feature/home/presentation/view/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CustomGridViewProductCard extends StatelessWidget {
  const CustomGridViewProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
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

