import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_text_form_field.dart';
import 'package:ecommerce_app/feature/search/presentation/view/widget/not_result.dart';
import 'package:ecommerce_app/feature/search/presentation/view/widget/not_result_icon_search.dart';
import 'package:flutter/material.dart';

class SearchWithoutResultViewBody extends StatelessWidget {
  const SearchWithoutResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomAppBar(text: 'البحث', showBackButton: true,),
          CustomSearchTextFormField(),
          SizedBox(height: 16),
          NotResult(),
          Expanded(
            child: NotResultIconSearch(),
          ),
        ],
      ),
    );
  }
}




