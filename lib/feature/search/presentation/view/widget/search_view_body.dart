import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_text_form_field.dart';
import 'package:ecommerce_app/feature/search/presentation/view/widget/grid_view_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            CustomAppBar(text: 'البحث', showBackButton: true,),
            CustomSearchTextFormField(),
            SizedBox(height: 16),
            Text('نتائج البحث ', style: AppStyle.grey13Regular),
            SizedBox(height: 16),
            GridViewSearch(),
          ],
        ),
      ),
    );
  }
}
