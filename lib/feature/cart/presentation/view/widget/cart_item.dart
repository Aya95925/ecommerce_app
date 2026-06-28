import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/feature/cart/presentation/view/widget/product_quentity_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: Row(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .16,
                  decoration: const BoxDecoration(color: AppColor.grey),
                  child: SvgPicture.asset(
                    Assets.assetsImagesFacebookIcons,
                    fit: BoxFit.scaleDown,
                  ),
                ),

                const SizedBox(width: 16),

                const Expanded(child: ProductQuantityRow()),

                const SizedBox(width: 16),

                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: FaIcon(
                    FontAwesomeIcons.trashCan,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
