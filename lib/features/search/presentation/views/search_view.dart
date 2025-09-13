import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/localization/locale_keys.g.dart';
import 'package:news_app/core/routing/app_routes.dart';
import 'package:news_app/core/widgets/custom_button.dart';
import 'package:news_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:news_app/features/search/presentation/views/widgets/custom_search_text_feild.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 200,
              children: [
                CustomTextFeild(
                  hint: LocaleKeys.search.tr(),
                  controller: searchController,
                ),
                CustomButton(
                  title: LocaleKeys.search.tr(),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<SearchCubit>(
                        context,
                      ).getSearchResult(searchController.text);
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.searchResultView);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
