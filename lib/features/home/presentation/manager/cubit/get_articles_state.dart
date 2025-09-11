part of 'get_articles_cubit.dart';

sealed class GetArticlesState {}

final class GetArticlesInitial extends GetArticlesState {}

final class GetArticlesLoading extends GetArticlesState {}

final class GetArticlesSuccess extends GetArticlesState {
  final List<ArticleModel> articles;

  GetArticlesSuccess({required this.articles});
}

final class GetArticlesFailure extends GetArticlesState {
  final String errorMessage;

  GetArticlesFailure({required this.errorMessage});
}
