import 'package:dio/dio.dart';
import 'package:final_clean/core/connection/network_info.dart';
import 'package:final_clean/core/network/client/dio_client.dart';
import 'package:final_clean/features/news/data/datasources/remote_source/news_remote_source.dart';
import 'package:final_clean/features/news/data/repositories/news_repo_imp.dart';
import 'package:final_clean/features/news/domain/repositories/news_repo.dart';
import 'package:final_clean/features/news/domain/usecases/get_news_case.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingleton<Dio>(() => Dio());

  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));

  getIt.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker.instance,
  );

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt.get<InternetConnectionChecker>()),
  );

  /* NEWS */

  // UseCase
  getIt.registerLazySingleton<GetNews>(() => GetNews());

  //DataSources
  getIt.registerLazySingleton<NewsRemoteSource>(() => NewsRemoteSourceImp());

  getIt.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImp(
      newsRemoteSource: getIt<NewsRemoteSource>(),
      networkInfo: getIt<NetworkInfo>(),
    ),
  );
}
