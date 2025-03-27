import 'package:final_clean/features/news/domain/entity/news_entity.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key, required this.article});

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1000,
      child: Column(
        children: [
          Text("${article.source}"),
          Text("${article.author}"),
          Text("${article.content}"),
          Text("${article.description}"),
          Text("${article.title}"),
          Image.network(article.urlToImage.toString()),
        ],
      ),
    );
  }
}
