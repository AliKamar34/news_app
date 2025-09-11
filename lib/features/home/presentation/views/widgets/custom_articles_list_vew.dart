import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/core/utils/format_date_string.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class CustomArticlesListView extends StatelessWidget {
  const CustomArticlesListView({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          title: Text(
            articles[index].title ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.styleSemiBold18(context),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: Text(
                  articles[index].authorName ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.styleRegular12(context),
                ),
              ),
              Text(
                formatDateString(articles[index].publishedAt),
                style: AppTextStyle.styleRegular12(context),
              ),
            ],
          ),
          trailing: SizedBox(
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    articles[index].imageUrl ??
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
                width: double.infinity,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.20,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
