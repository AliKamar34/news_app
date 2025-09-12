import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/errors/dio_error.dart';
import 'package:news_app/core/networking/api_endpoints.dart';
import 'package:news_app/core/networking/dio_helper.dart';
import 'package:news_app/core/secrets.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final DioHelper dioHelper = DioHelper();
  @override
  Future<Either<String, List<ArticleModel>>> getArticles() async {
    try {
      final response = await dioHelper.getRequest(
        endPoint: ApiEndpoints.topHeadlines,
        queryParameters: {'country': 'us', 'apiKey': Secrets.apiKey},
      );

      final articles = (response.data['articles'] as List)
          .map((article) => ArticleModel.fromJson(article))
          .toList();

      log(articles.toString());
      return right(articles);
    } on DioException catch (e) {
      final message = DioErrorMapper.map(e);
      log(message);
      return left(message);
    } catch (e) {
      log(e.toString());
      return left(e.toString());
    }
  }
}
