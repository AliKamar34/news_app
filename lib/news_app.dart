import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routing/router_generation_config.dart';
import 'package:news_app/core/themes/theme_data.dart';
import 'package:news_app/features/search/data/repos/search_repo_impl.dart';
import 'package:news_app/features/search/presentation/manager/cubit/search_cubit.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImpl()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.lightTheme,
        routerConfig: RouterGenerationConfig.goRoute,
      ),
    );
  }
}
