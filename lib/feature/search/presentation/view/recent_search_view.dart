import 'package:ecommerce_app/feature/search/presentation/view/widget/recent_search_view_body.dart';
import 'package:flutter/material.dart';

class RecentSearchView extends StatelessWidget {
  const RecentSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: 
    
    RecentSearchViewBody()));
  }
}
