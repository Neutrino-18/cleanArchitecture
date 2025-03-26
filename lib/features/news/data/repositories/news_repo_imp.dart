import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_clean/core/connection/network_info.dart';
import 'package:final_clean/core/errors/failures.dart';
import 'package:final_clean/features/news/data/datasources/remote_source/news_remote_source.dart';
import 'package:final_clean/features/news/data/models/news_model.dart';
import 'package:final_clean/features/news/domain/entity/news_entity.dart';
import 'package:final_clean/features/news/domain/repositories/news_repo.dart';

class NewsRepositoryImp implements NewsRepository {
  final NewsRemoteSource newsRemoteSource;
  final NetworkInfo networkInfo;
  NewsRepositoryImp({
    required this.newsRemoteSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NewsEntity>> getNews() async {
    final isConnected = await networkInfo.isconnected;

    if (isConnected!) {
      try {
        final results = await newsRemoteSource.fetchnewsData();

        final news = NewsModel.fromJson(results.data);
        return Right(news);
      } on DioException catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return const Right(
        NewsModel(status: null, totalResults: null, article: null),
      );
    }
  }
}
