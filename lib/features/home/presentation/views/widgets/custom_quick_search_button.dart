import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/routing/app_routes.dart';
import 'package:news_app/core/themes/app_colors.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/features/search/presentation/manager/cubit/search_cubit.dart';

class CustomQuickSearchButton extends StatelessWidget {
  const CustomQuickSearchButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: OutlinedButton(
        onPressed: () {
          BlocProvider.of<SearchCubit>(context).getSearchResult(title);
          GoRouter.of(context).pushNamed(AppRoutes.searchResultView);
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: const BorderSide(color: AppColors.secondaryColor),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        ),
        child: Text(
          title,
          style: AppTextStyle.styleSemiBold14(
            context,
          ).copyWith(color: AppColors.blackColor),
        ),
      ),
    );
  }
}
