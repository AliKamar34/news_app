import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/localization/locale_keys.g.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/features/search/presentation/views/widgets/search_result_bloc_builder.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,
        title: Text(
          LocaleKeys.search_result.tr(),
          style: AppTextStyle.styleSemiBold18(context),
        ),
        centerTitle: true,
      ),
      body: const SearchResultBlocBuilder(),
    );
  }
}
