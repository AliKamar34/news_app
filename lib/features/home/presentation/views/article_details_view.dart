import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/localization/locale_keys.g.dart';
import 'package:news_app/core/routing/app_routes.dart';
import 'package:news_app/core/themes/app_text_styles.dart';
import 'package:news_app/core/utils/format_date_string.dart';
import 'package:news_app/core/widgets/custom_button.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl:
                  article.imageUrl ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuz18BdRbDxEi0_YA3Q9zXq90dTKHKM0WDUZQKZe0DKLQ8jlxZqROkXE&s',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                fit: BoxFit.cover,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.65,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title ?? '',
                      style: AppTextStyle.styleSemiBold18(context),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(article.authorName ?? '')),
                        Expanded(
                          child: Text(formatDateString(article.publishedAt)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(article.description ?? ''),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: CustomButton(
                  title: LocaleKeys.show_full_article.tr(),
                  onPressed: () {
                    GoRouter.of(context).pushNamed(
                      AppRoutes.fullArticleView,
                      extra: article.articleUrl,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
