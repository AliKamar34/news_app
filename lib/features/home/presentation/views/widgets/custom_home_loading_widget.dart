import 'package:flutter/widgets.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_articles_list_vew.dart';
import 'package:news_app/features/home/presentation/views/widgets/head_article_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomHomeLoadingWidget extends StatelessWidget {
  const CustomHomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        children: [
          HeadArticleItem(article: fakeModelForLoading()),
          Expanded(
            child: CustomArticlesListView(
              articles: [
                fakeModelForLoading(),
                fakeModelForLoading(),
                fakeModelForLoading(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ArticleModel fakeModelForLoading() {
    return ArticleModel(
      sourceId: '',
      sourceName: '',
      title: 'xdcfgvsdgfcasfa',
      authorName: 'sdfasfdasfasf',
      description: '',
      imageUrl: '',
      articleUrl: '',
      content: '',
      publishedAt: 'sdfafdasfasf',
    );
  }
}
