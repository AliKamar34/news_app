import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_colors.dart';
import 'package:news_app/core/themes/app_text_styles.dart';

class CustomQuickSearchButton extends StatelessWidget {
  const CustomQuickSearchButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: const BorderSide(color: AppColors.secondaryColor),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        ),
        child: Text(
          title.tr(),
          style: AppTextStyle.styleSemiBold14(
            context,
          ).copyWith(color: AppColors.blackColor),
        ),
      ),
    );
  }
}
