import 'package:dartz/dartz.dart';
import 'package:final_clean/core/errors/failures.dart';
import 'package:final_clean/features/news/domain/entity/news_entity.dart';

abstract class NewsRepository {
  Future<Either<Failure, NewsEntity>> getNews();
}
