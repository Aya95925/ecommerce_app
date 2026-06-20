import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_route.dart';
import 'package:ecommerce_app/core/utils/app_style.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_container_buttom.dart';
import 'package:ecommerce_app/feature/auth/presentation/widgets/custom_login_appbar.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryViewBody extends StatefulWidget {
  const PasswordRecoveryViewBody({super.key});

  @override
  State<PasswordRecoveryViewBody> createState() =>
      _PasswordRecoveryViewBodyState();
}

class _PasswordRecoveryViewBodyState extends State<PasswordRecoveryViewBody> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  String getOtp() {
    return controllers.map((c) => c.text).join();
  }

  @override
  void initState() {
    super.initState();

    for (var node in focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }

    for (var node in focusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const CustomLoginAppBar(text: 'التحقق من الرمز'),

          const SizedBox(height: 30),
          Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
            style: AppStyle.greyScale60016SemiBold,
          ),
          const SizedBox(height: 29),

          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: MediaQuery.sizeOf(context).width * .2,
                  height: 60,
                  child: TextFormField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: AppStyle.orange23Bold.copyWith(
                      color: focusNodes[index].hasFocus
                          ? AppColor.orange500
                          : AppColor.greyScale950,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      filled: true,
                      fillColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: AppColor.dividerGrey,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: AppColor.orange500,
                          width: 2,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});

                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      }

                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          CustomContainerButtom(
            text: 'تحقق من الرمز',
            onTap: () {
              Navigator.push(context, AppRoute.resetPassword);
            },
          ),

          const SizedBox(height: 24),

          Align(
            alignment: AlignmentGeometry.center,
            child: Text(
              'إعادة إرسال الرمز',
              style: AppStyle.green13semiBold.copyWith(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
