part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<ArticleModel> articles;

  SearchSuccess({required this.articles});
}

final class SearchFailure extends SearchState {
  final String errorMessage;

  SearchFailure({required this.errorMessage});
}
