import 'package:dartz/dartz.dart';

import '../../core/service_locator.dart';
import '../../domain/entities/top_headlines.dart';
import '../../domain/repositories/top_headlines_repository.dart';
import '../models/error_response.dart';
import '../models/top_headlines_response.dart';
import 'data_sources/top_headlines_local_data_source.dart';
import 'data_sources/top_headlines_remote_data_source.dart';

class TopHeadlinesRepositoryImpl implements TopHeadlinesRepository {
  late TopHeadlinesRemoteDataSource _topHeadlinesRemoteDataSource;
  late TopHeadlinesLocalDataSource _topHeadlinesLocalDataSource;

  TopHeadlinesRepositoryImpl() {
    _topHeadlinesRemoteDataSource = sl.get<TopHeadlinesRemoteDataSource>();
    _topHeadlinesLocalDataSource = sl.get<TopHeadlinesLocalDataSource>();
  }

  @override
  Future<TopHeadlines?> getTopHeadlines(String country, String category, String query) async {
    Either<TopHeadlinesResponse, ErrorResponse> _response =
    await _topHeadlinesRemoteDataSource.getTopHeadlines(country, category, query);

    var result = _response.fold((apiResponse) async {
      _topHeadlinesLocalDataSource.putTopHeadlinesResponse(apiResponse);
      return apiResponse.toEntity();
    }, (error) async {
      var localResponse = await _topHeadlinesLocalDataSource
          .getTopHeadlinesResponse();
      if (localResponse != null) {
        return localResponse.toEntity();
      } else {
        return null;
      }
    });

    return result;
  }

}

