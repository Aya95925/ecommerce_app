import 'package:ecommerce_app/core/utils/app_assets.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_buttom.dart'; // تأكد من تعديل Buttom إلى Button مستقبلاً في اسم الملف لتجنب الأخطاء الإملائية
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetYourPasswordBody extends StatelessWidget {
  const ResetYourPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomLoginAppBar(text: 'كلمة مرور جديدة'),
            const SizedBox(height: 28),
            Align(
              alignment: AlignmentGeometry
                  .topRight, // يمكنك استخدام Alignment.topRight مباشرة لتبسيط الكود
              child: Text(
                'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
                style: AppStyle.greyScale23SemiBold.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 34),
            CustomTextFormField(
              hintText: 'كلمة المرور الجديدة',
              obscureText: true,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(22),
                child: SvgPicture.asset(
                  Assets.assetsImagesEye,
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'تأكيد كلمة المرور الجديدة',
              obscureText: true,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(22),
                child: SvgPicture.asset(
                  Assets.assetsImagesEye,
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            const SizedBox(height: 24),
            CustomContainerButtom(
              text: 'إنشاء كلمة مرور جديدة',
              onTap: () {
                SuccessDialog.show(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
