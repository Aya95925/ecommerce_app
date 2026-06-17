import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.grey,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FaIcon(FontAwesomeIcons.heart, size: 20),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      Assets.assetsImagesAppIcon,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'فراولة',
                          style: AppStyle.grey13SemiBold,
                          textAlign: TextAlign.start,
                        ),

                        const SizedBox(height: 4),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '30 جنيه ',
                                style: AppStyle.orange23Bold.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: '/ الكيلو',
                                style: AppStyle.orange13Semibold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    CircleAvatar(
                      radius: 18,
                      backgroundColor: AppColor.green500,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
