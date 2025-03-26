import 'package:dio/dio.dart';
import 'package:final_clean/core/network/client/dio_client.dart';
import 'package:final_clean/core/network/endpoints/endpoints.dart';
import 'package:final_clean/di/service_locator.dart';

abstract class NewsRemoteSource {
  Future<Response> fetchnewsData();
}

class NewsRemoteSourceImp implements NewsRemoteSource {
  @override
  Future<Response> fetchnewsData() async {
    final dio = getIt.get<DioClient>();

    final response = await dio.get(Endpoints.newsBaseUrl);

    return response;
  }
}
