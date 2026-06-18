import 'package:ecommerce_app/feature/search/presentation/view/widget/search_without_result_view_body.dart';
import 'package:flutter/material.dart';

class SearchWithoutResultView extends StatelessWidget {
  const SearchWithoutResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchWithoutResultViewBody()),);
  }
}
