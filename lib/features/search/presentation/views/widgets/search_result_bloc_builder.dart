import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:news_app/features/search/presentation/views/widgets/custom_article_search_result_listview.dart';
import 'package:news_app/features/search/presentation/views/widgets/custom_search_loading.dart';

class SearchResultBlocBuilder extends StatelessWidget {
  const SearchResultBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return CustomArticleSearchListView(articles: state.articles);
        } else if (state is SearchFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const CustomSearchLoadingWidget();
        }
      },
    );
  }
}
