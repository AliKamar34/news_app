import 'package:flutter/material.dart';
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
          'Search Result',
          style: AppTextStyle.styleSemiBold18(context),
        ),
        centerTitle: true,
      ),
      body: const SearchResultBlocBuilder(),
    );
  }
}
