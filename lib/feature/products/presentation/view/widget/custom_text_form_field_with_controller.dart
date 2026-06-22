import 'package:flutter/material.dart';

class CustomTextFormFieldWithController extends StatelessWidget {
  const CustomTextFormFieldWithController({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );

    return TextFormField(
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      decoration: const InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }
}
