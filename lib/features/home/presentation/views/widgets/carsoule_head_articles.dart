import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/head_article_item.dart';

class CasouleHeadArticle extends StatelessWidget {
  const CasouleHeadArticle({super.key, required this.article});
  final List<ArticleModel> article;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.36,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
      ),
      items: article.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return HeadArticleItem(article: i);
          },
        );
      }).toList(),
    );
  }
}
