import 'package:go_router/go_router.dart';
import 'package:news_app/core/routing/app_routes.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/presentation/views/article_details_view.dart';
import 'package:news_app/features/home/presentation/views/home_view.dart';
import 'package:news_app/features/search/presentation/views/search_result_view.dart';
import 'package:news_app/features/search/presentation/views/search_view.dart';

class RouterGenerationConfig {
  static GoRouter goRoute = GoRouter(
    initialLocation: AppRoutes.homeView,

    routes: [
      GoRoute(
        path: AppRoutes.homeView,
        name: AppRoutes.homeView,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: AppRoutes.searchView,
        name: AppRoutes.searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppRoutes.searchResultView,
        name: AppRoutes.searchResultView,
        builder: (context, state) => const SearchResultView(),
      ),
      GoRoute(
        path: AppRoutes.articleDetailsView,
        name: AppRoutes.articleDetailsView,
        builder: (context, state) =>
            ArticleDetailsView(article: state.extra as ArticleModel),
      ),
    ],
  );
}
