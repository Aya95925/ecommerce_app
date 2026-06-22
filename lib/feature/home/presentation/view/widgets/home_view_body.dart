import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/core/widgets/more_popular.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_appbar_home.dart';
import 'package:ecommerce_app/feature/home/presentation/view/widgets/custom_grid_view_prosuct_card.dart';
import 'package:ecommerce_app/core/widgets/custom_search_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBarHome(),
            SizedBox(height: 16),

            CustomSearchTextFormField(),
            SizedBox(height: 12),
           MorePopular(isShowMore: true)
          ],
        ),
      ),
    );
  }
}
