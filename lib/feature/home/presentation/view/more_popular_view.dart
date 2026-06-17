import 'package:ecommerce_app/feature/home/presentation/view/widgets/more_popular_body.dart';
import 'package:flutter/material.dart';

class MorePopularView extends StatelessWidget {
  const MorePopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: MorePopularBody()));
  }
}
