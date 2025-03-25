import 'package:final_clean/features/news/domain/entity/news_entity.dart';

class NewsModel extends NewsEntity {
  const NewsModel({
    required super.status,
    required super.totalResults,
    required super.article,
  });

  factory NewsModel.json(Map<String, dynamic> json) {
    return NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      article:
          (json['articles'] as List)
              .map((e) => ArticleModel.fromJson(e))
              .toList(),
    );
  }
}

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    required super.author,
    required super.content,
    required super.description,
    required super.publishedAt,
    required super.source,
    required super.title,
    required super.url,
    required super.urlToImage,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'],
      content: json['content'],
      description: json['description'],
      publishedAt: json['publishedAt'],

      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      source:
          json['source'] != null ? SourceModel.fromJson(json['source']) : null,
    );
  }
}

class SourceModel extends SourceEntity {
  const SourceModel({required super.id, required super.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(id: json['id'], name: json['name']);
  }
}
