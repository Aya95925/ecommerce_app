import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/auth_prompt_row.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_buttom.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_social_media.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_divider.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        children: [
          CustomLoginAppBar(text: 'تسجيل دخول'),
          SizedBox(height: 24),
          CustomTextFormField(hintText: 'البريد الإلكتروني'),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            suffixIcon: SvgPicture.asset(
              Assets.assetsImagesEye,
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('نسيت كلمة المرور؟', style: AppStyle.green13semiBold),
          ),
          SizedBox(height: 33),
          CustomContainerButtom(text: 'تسجيل دخول'),
          SizedBox(height: 33),
          AuthPromptRow(
            text: 'لاتمتلك حساب؟',
            buttom: 'قم بانشاء حساب',
            onTap: () {
              Navigator.push(context, AppRoute.signUp);
            },
          ),
          SizedBox(height: 49),
          CustomDivider(),
          SizedBox(height: 31),
          CustomContainerSocialMedia(
            image: Assets.assetsImagesGooglIcons,
            text: 'تسجيل بواسطة جوجل',
          ),
          SizedBox(height: 16),
          CustomContainerSocialMedia(
            image: Assets.assetsImagesAppleIcon,
            text: 'تسجيل بواسطة أبل',
          ),
          SizedBox(height: 16),
          CustomContainerSocialMedia(
            image: Assets.assetsImagesFacebookIcons,
            text: 'تسجيل بواسطة فيسبوك',
          ),
        ],
      ),
    );
  }
}
