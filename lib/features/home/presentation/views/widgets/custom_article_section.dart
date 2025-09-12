import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/cubit/get_articles_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/carsoule_head_articles.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_articles_list_vew.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_home_loading_widget.dart';

class CustomArticlesSection extends StatelessWidget {
  const CustomArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetArticlesCubit, GetArticlesState>(
      builder: (context, state) {
        if (state is GetArticlesSuccess) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CasouleHeadArticle(article: state.articles.take(6).toList()),
                CustomArticlesListView(
                  articles: state.articles.skip(6).toList(),
                ),
              ],
            ),
          );
        } else if (state is GetArticlesFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const CustomHomeLoadingWidget();
        }
      },
    );
  }
}
