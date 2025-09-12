import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_colors.dart';
import 'package:news_app/core/themes/app_text_styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hint,
    this.icon,
    this.isPassword,
    this.validator,
    this.controller,
  });
  final String hint;
  final Widget? icon;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      cursorColor: AppColors.secondaryColor,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.secondaryColor,
        border: borderBuilder(),
        enabledBorder: borderBuilder(),
        focusedBorder: borderBuilder(),
        errorBorder: borderBuilder().copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: borderBuilder().copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        hintText: hint,
        hintStyle: AppTextStyle.styleSemiBold14(context),
        suffixIcon: icon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      gapPadding: 18,
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.secondaryColor),
    );
  }
}
