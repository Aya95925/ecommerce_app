import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText, // النص التوضيحي داخل الحقل
    this.keyboardType, // نوع لوحة المفاتيح (إيميل، أرقام، إلخ)
    this.suffixIcon, // أيقونة في نهاية الحقل (مثل العين في كلمة المرور)
    this.obscureText = false, // لإخفاء الكتابة (في حال كان حقل كلمة مرور)
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      textAlign: TextAlign.right, // لجعل الكتابة تبدأ من اليمين (عربي)
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyle.grey13SemiBold.copyWith(
          fontWeight: FontWeight.w700,
        ),
        suffixIcon: suffixIcon,

        filled: true,
        fillColor: AppColor.whittgrey,
        // الحدود في الحالة الطبيعية
        border: buildBorder(),
        // الحدود عند الضغط على الحقل (Active)
        enabledBorder: buildBorder(),
        // الحدود عند التركيز والكتابة
        focusedBorder: buildBorder(
          // color: const Color(0xFF1B5E37),
        ), // لون أخضر عند التحديد (اختياري)
      ),
    );
  }

  // دالة لتجنب تكرار كود الحدود (Border)
  OutlineInputBorder buildBorder({Color color = AppColor.whitegrey1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4), // حواف دائرية خفيفة مثل Figma
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
