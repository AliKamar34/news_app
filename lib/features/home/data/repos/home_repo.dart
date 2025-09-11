import 'package:dartz/dartz.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

abstract class HomeRepo {
  Future<Either<String, List<ArticleModel>>> getArticles();
}
