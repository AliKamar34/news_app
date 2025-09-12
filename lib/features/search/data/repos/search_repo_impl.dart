import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/errors/dio_error.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/core/networking/api_endpoints.dart';
import 'package:news_app/core/networking/dio_helper.dart';
import 'package:news_app/core/secrets.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/search/data/repos/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final DioHelper dioHelper = DioHelper();

  @override
  Future<Either<Failure, List<ArticleModel>>> getSearchResult(
    String searchKey,
  ) async {
    try {
      final response = await dioHelper.getRequest(
        endPoint: ApiEndpoints.search,
        queryParameters: {'q': searchKey, 'apiKey': Secrets.apiKey},
      );

      final articles = (response.data['articles'] as List)
          .map((article) => ArticleModel.fromJson(article))
          .toList();

      log(articles.toString());
      return right(articles);
    } on DioException catch (e) {
      final message = DioErrorMapper.map(e);
      log(message);
      return left(Failure(errorMessage: message));
    } catch (e) {
      log(e.toString());
      return left(Failure(errorMessage: e.toString()));
    }
  }
}
