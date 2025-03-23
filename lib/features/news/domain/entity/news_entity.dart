// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class NewsEntity extends Equatable {
  final String? status;
  final int? totalResults;
  final ArticleEntity? newsArticle;

  const NewsEntity({this.newsArticle, this.status, this.totalResults});
  @override
  List<Object?> get props => [status, totalResults, newsArticle];
}

class ArticleEntity extends Equatable {
  final SourceEntity? sourceEntity;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity(
    this.sourceEntity,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  @override
  List<Object?> get props {
    return [
      sourceEntity,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}

class SourceEntity extends Equatable {
  final String? id;
  final String? name;

  const SourceEntity(this.id, this.name);

  @override
  List<Object?> get props => [id, name];
}
