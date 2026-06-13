import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/Network/model/onbording_model.dart';
import 'package:ecommerce_app/feature/onboarding/presentation/widget/page_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  static final List<OnboardingModel> pages = [
    OnboardingModel(
      backgroundImage: Assets.assetsImagesVector1,
      image: Assets.assetsImagesFreepikFruitBasketInject,
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'مرحبًا بك في ',
              style: AppStyle.orange23Bold.copyWith(
                color: AppColor.greyScale950,
              ),
            ),
            TextSpan(
              text: 'Fruit',
              style: AppStyle.orange23Bold.copyWith(color: AppColor.green500),
            ),
            TextSpan(text: 'HUB', style: AppStyle.orange23Bold),
          ],
        ),
      ),
      description:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    ),
    OnboardingModel(
      backgroundImage: Assets.assetsImagesVector2,
      image: Assets.assetsImagesPineappleCuate,
      title: Text(
        'ابحث وتسوق',
        style: AppStyle.orange23Bold.copyWith(color: AppColor.greyScale950),
      ),
      description:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية.',
    ),
  ];

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController controller;
  int currentPage=0;
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return PageView.builder(
      controller: controller,
      itemCount: OnboardingViewBody.pages.length,
      onPageChanged: (index) {
        setState(() {
          currentPage=index;
        });
      },
      itemBuilder: (context, index) {

        final page = OnboardingViewBody.pages[index];

        return PageViewBody(
          backgroundImage: page.backgroundImage,
          image: page.image,
          title: page.title,
          subTitle: SizedBox(
            width: width * 0.8,
            child: Text(
              page.description,
              textAlign: TextAlign.center,
              style: AppStyle.grey13SemiBold,
            ),
          ), currentPage: currentPage, controller:controller ,
        );
      },
    );
  }
}
