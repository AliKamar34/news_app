import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/routing/app_routes.dart';

class RouterGenerationConfig {
  static GoRouter goRoute = GoRouter(
    initialLocation: AppRoutes.homeView,

    routes: [
      GoRoute(
        path: AppRoutes.homeView,
        name: AppRoutes.homeView,
        builder: (context, state) => const SizedBox(),
      ),

      GoRoute(
        path: AppRoutes.searchView,
        name: AppRoutes.searchView,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: AppRoutes.searchResultView,
        name: AppRoutes.searchResultView,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: AppRoutes.articleDetailsView,
        name: AppRoutes.articleDetailsView,
        builder: (context, state) => const SizedBox(),
      ),
    ],
  );
}
