import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'get_articles_state.dart';

class GetArticlesCubit extends Cubit<GetArticlesState> {
  GetArticlesCubit(this.homeRepo) : super(GetArticlesInitial());
  final HomeRepo homeRepo;

  Future<void> getArticles() async {
    emit(GetArticlesLoading());
    final result = await homeRepo.getArticles();
    result.fold(
      (failure) {
        log(failure.toString());
        emit(GetArticlesFailure(errorMessage: failure.toString()));
      },
      (articles) {
        log(articles.toString());

        emit(GetArticlesSuccess(articles: articles));
      },
    );
  }
}
