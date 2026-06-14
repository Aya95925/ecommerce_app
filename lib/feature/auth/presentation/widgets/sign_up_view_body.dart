import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/Terms_and_conditions.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/auth_prompt_row.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_buttom.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomLoginAppBar(text: 'حساب جديد'),
            SizedBox(height: 28),
            CustomTextFormField(hintText: 'الاسم كامل'),
            SizedBox(height: 16),
            CustomTextFormField(hintText: 'البريد الإلكتروني'),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              obscureText: true,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  Assets.assetsImagesEye,
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            TermsAndConditions(),
            SizedBox(height: 30),
            CustomContainerButtom(text: 'إنشاء حساب جديد'),
            SizedBox(height: 26),
            AuthPromptRow(
              text: 'تمتلك حساب بالفعل؟',
              buttom: 'تسجيل دخول',
              onTap: () {
                Navigator.push(context, AppRoute.loginView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
