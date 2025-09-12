import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/search/data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void> getSearchResult(String searchKey) async {
    emit(SearchLoading());
    final result = await searchRepo.getSearchResult(searchKey);
    result.fold(
      (failure) {
        emit(SearchFailure(errorMessage: failure.toString()));
      },
      (searchResult) {
        emit(SearchSuccess(articles: searchResult));
      },
    );
  }
}
