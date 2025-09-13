import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/localization/locale_keys.g.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_quick_search_button.dart';

class CustomQuickSearchListView extends StatelessWidget {
  const CustomQuickSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      LocaleKeys.business.tr(),
      LocaleKeys.technology.tr(),
      LocaleKeys.entertainment.tr(),
      LocaleKeys.travel.tr(),
    ];
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return CustomQuickSearchButton(title: titles[index]);
          },
        ),
      ),
    );
  }
}
