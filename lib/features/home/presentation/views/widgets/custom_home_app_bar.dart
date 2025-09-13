import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/localization/locale_keys.g.dart';
import 'package:news_app/core/routing/app_routes.dart';
import 'package:news_app/core/themes/app_colors.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/core/widgets/custom_container.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      backgroundColor: AppColors.secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocaleKeys.explore.tr(),
            style: AppTextStyle.styleSemiBold30(context),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.searchView);
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              if (context.locale == const Locale('en')) {
                context.setLocale(const Locale('ar'));
              } else {
                context.setLocale(const Locale('en'));
              }
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
    );
  }
}
