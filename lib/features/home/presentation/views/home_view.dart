import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/repos/home_repo_impl.dart';
import 'package:news_app/features/home/presentation/manager/cubit/get_articles_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_article_section.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_quick_search_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomHomeAppBar(),
            const SizedBox(height: 16),
            const CustomQuickSearchListView(),
            const SizedBox(height: 24),
            BlocProvider(
              create: (context) =>
                  GetArticlesCubit(HomeRepoImpl())..getArticles(),
              child: const Expanded(child: CustomArticlesSection()),
            ),
          ],
        ),
      ),
    );
  }
}
