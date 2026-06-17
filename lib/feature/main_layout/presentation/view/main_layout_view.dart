import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/feature/cart/presentation/view/cart_view.dart';
import 'package:ecommerce_app/feature/home/presentation/view/home_view.dart';
import 'package:ecommerce_app/feature/main_layout/presentation/view/widget/bottom_nav_item.dart';
import 'package:ecommerce_app/feature/products/presentation/view/product_view.dart';
import 'package:ecommerce_app/feature/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int currentIndex = 0;
  List<Widget> items = [
    const HomeView(),
    const ProductView(),
    const CartView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(child: items[currentIndex]),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [BoxShadow(blurRadius: 7, color: Colors.black12)],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(
                index: 0,
                icon: Assets.assetsImagesHome,
                selectedIcon: Assets.assetsImagesHomeWhite,
                label: 'الرئيسية',
              ),

              buildNavItem(
                index: 1,
                icon: Assets.assetsImagesProducts,
                selectedIcon: Assets.assetsImagesProductWhite,
                label: 'المنتجات',
              ),

              buildNavItem(
                index: 2,
                icon: Assets.assetsImagesShoppingCart,
                selectedIcon: Assets.assetsImagesShoppingCartWhite,
                label: 'سلة التسوق',
              ),

              buildNavItem(
                index: 3,
                icon: Assets.assetsImagesUser,
                selectedIcon: Assets.assetsImagesUserWhite,
                label: 'حسابي',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem({
    required int index,
    required String icon,
    required String selectedIcon,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: currentIndex == index
          ? BottomNavItem(image: selectedIcon, label: label)
          : SvgPicture.asset(icon, height: 20),
    );
  }
}
