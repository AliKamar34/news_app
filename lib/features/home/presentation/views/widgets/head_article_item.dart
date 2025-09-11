import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/core/utils/format_date_string.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class HeadArticleItem extends StatelessWidget {
  const HeadArticleItem({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl:
                article.imageUrl ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.20,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          article.title ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.styleSemiBold18(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                article.authorName ?? '',
                maxLines: 1,
                style: AppTextStyle.styleRegular12(context),
              ),
            ),
            Text(
              formatDateString(article.publishedAt),
              style: AppTextStyle.styleRegular12(context),
            ),
          ],
        ),
      ],
    );
  }
}
