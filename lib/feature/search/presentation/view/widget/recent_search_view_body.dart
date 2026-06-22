import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_text_form_field.dart';
import 'package:ecommerce_app/feature/search/presentation/view/widget/Custom_list_view_builder.dart';
import 'package:flutter/material.dart';

class RecentSearchViewBody extends StatelessWidget {
  const RecentSearchViewBody({super.key});

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
            SizedBox(height: 16),
            CustomSearchTextFormField(),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'عمليات البحث الأخيرة',
                  style: AppStyle.greyScale16Bold.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text('حذف الكل', style: AppStyle.grey13Regular),
              ],
            ),
            SizedBox(height: 6),
            CustomListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
