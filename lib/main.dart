import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/helpers/secure_storage_helper.dart';
import 'package:news_app/core/secrets.dart';
import 'package:news_app/core/utils/simple_bloc_observer.dart';
import 'package:news_app/news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SecureStorageHelper.saveDate('ApiKey', Secrets.apiKey);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const NewsApp(),
    ),
  );
}
