import 'package:dartz/dartz.dart';

import '../../../core/service_locator.dart';
import '../../models/error_response.dart';
import '../../models/top_headlines_query_params.dart';
import '../../models/top_headlines_response.dart';
import '../../network/current_weather_api.dart';

abstract class TopHeadlinesRemoteDataSource {
  Future<Either<TopHeadlinesResponse, ErrorResponse>> getTopHeadlines(
      String country, String category, String query);
}

class TopHeadlinesRemoteDataSourceImpl implements TopHeadlinesRemoteDataSource {
  late TopHeadlinesApi _topHeadlinesApi;

  TopHeadlinesRemoteDataSourceImpl() {
    _topHeadlinesApi = sl<TopHeadlinesApi>();
  }

  @override
  Future<Either<TopHeadlinesResponse, ErrorResponse>> getTopHeadlines(String country, String category, String query) async {
    Either<TopHeadlinesResponse, ErrorResponse> response =
    await _topHeadlinesApi.get(
        queryParameters: TopHeadlinesQueryParams("f5135eea2f7748d7b144be1c2fad9c78", country, category, query).toJson());
    return response;
  }
}
