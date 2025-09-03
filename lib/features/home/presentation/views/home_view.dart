import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/carsoule_head_articles.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_articles_list_vew.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_quick_search_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHomeAppBar(),
            SizedBox(height: 16),
            CustomQuickSearchListView(),
            SizedBox(height: 24),
            CasouleHeadArticle(),
            Expanded(child: CustomArticlesListView()),
          ],
        ),
      ),
    );
  }
}
