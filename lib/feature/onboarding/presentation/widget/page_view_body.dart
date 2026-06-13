import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.currentPage,
    required this.controller,
  });

  final String backgroundImage, image;
  final Widget title, subTitle;
  final int currentPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final topSectionHeight = MediaQuery.sizeOf(context).height * 0.45;

    return Column(
      children: [
        SizedBox(
          height: topSectionHeight,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),

              Positioned(
                top: 22,
                right: 22,
                child: currentPage == 0
                    ? InkWell(
                        onTap: () {
                          Navigator.push(context, AppRoute.loginView);
                        },
                        child: Text('تخط', style: AppStyle.grey13Regular),
                      )
                    : SizedBox(),
              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: -60,
                child: SvgPicture.asset(image, fit: BoxFit.none),
              ),
            ],
          ),
        ),

        const SizedBox(height: 54),
        title,
        const SizedBox(height: 24),
        subTitle,
        const SizedBox(height: 40),

        DotsIndicator(
          dotsCount: 2,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            color: currentPage == 0 ? Colors.grey.shade300 : AppColor.green500,
            activeColor: AppColor.green500,
          ),
        ),
        const SizedBox(height: 28),

        currentPage == 0
            ? SizedBox()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, AppRoute.loginView);
                  },
                  child: CustomButtom(text: 'ابدأ الان'),
                ),
              ),
      ],
    );
  }
}
