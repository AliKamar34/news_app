// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "explore": "استكشف",
  "travel": "سفر",
  "technology": "تقنية",
  "business": "أعمال",
  "entertainment": "ترفيه",
  "cancel": "إلغاء",
  "search_result": "نتيجة البحث",
  "no_results": "لا يوجد نتائج",
  "show_full_article": "إعرض المقال كامل",
  "search": "بحث"
};
static const Map<String,dynamic> _en = {
  "explore": "Explore",
  "travel": "Travel",
  "technology": "Technology",
  "business": "Business",
  "entertainment": "Entertainment",
  "cancel": "Cancel",
  "search_result": "Search result",
  "no_results": "No result",
  "show_full_article": "Show Full Article",
  "search": "Search"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
