class ArticleModel {
  final String? title;
  final String? authorName;
  final String? description;
  final String? imageUrl;
  final String? articleUrl;
  final String? content;
  final String? publishedAt;
  final String? sourceId;
  final String? sourceName;

  ArticleModel({
    required this.sourceId,
    required this.sourceName,
    required this.title,
    required this.authorName,
    required this.description,
    required this.imageUrl,
    required this.articleUrl,
    required this.content,
    required this.publishedAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] ?? '',
      authorName: json['author'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
      articleUrl: json['url'] ?? '',
      content: json['content'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      sourceId: json['source']['id'] ?? '',
      sourceName: json['source']['name'] ?? '',
    );
  }
}
