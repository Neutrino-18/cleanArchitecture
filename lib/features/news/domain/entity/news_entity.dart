// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class NewsEntity extends Equatable {
  final String? status;
  final int? totalResults;
  final List<ArticleEntity>? article;

  const NewsEntity({this.article, this.status, this.totalResults});
  @override
  List<Object?> get props => [status, totalResults, article];
}

class ArticleEntity extends Equatable {
  final SourceEntity? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props {
    return [
      source,
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

  const SourceEntity({this.id, this.name});

  @override
  List<Object?> get props => [id, name];
}
