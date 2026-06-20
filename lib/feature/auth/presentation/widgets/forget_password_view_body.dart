import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_buttom.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomLoginAppBar(text: 'نسيان كلمة المرور'),
            SizedBox(height: 28),
            Text(
              'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
              textAlign: TextAlign.right,
              maxLines: 2,
              style: AppStyle.greyScale60016SemiBold,
            ),
            SizedBox(height: 31),
            CustomTextFormField(hintText: 'ادخل رقم هاتفك'),
            SizedBox(height: 31),
            CustomContainerButtom(text: 'نسيت كلمة المرور'),
          ],
        ),
      ),
    );
  }
}
