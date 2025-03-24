import 'package:dartz/dartz.dart';
import 'package:final_clean/core/errors/failures.dart';
import 'package:final_clean/di/service_locator.dart';
import 'package:final_clean/features/news/domain/entity/news_entity.dart';
import 'package:final_clean/features/news/domain/repositories/news_repo.dart';

class GetNews {
  final newsRepo = getIt.get<NewsRepository>();

  Future<Either<Failure, NewsEntity>> getNews() {
    return newsRepo.getNews();
  }
}
