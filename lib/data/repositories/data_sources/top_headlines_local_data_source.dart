import 'package:hive/hive.dart';

import '../../models/top_headlines_response.dart';

abstract class TopHeadlinesLocalDataSource {
  Future<TopHeadlinesResponse?> getTopHeadlinesResponse(String country, String category, String query);
  Future<void> putTopHeadlinesResponse(TopHeadlinesResponse topHeadlinesResponse, String country, String category, String query);
}

class TopHeadlinesLocalDataSourceImpl extends TopHeadlinesLocalDataSource {
  String _createKey(String country, String category, String query) => "$country/$category/$query";

  Future<Box<TopHeadlinesResponse>> _getTopHeadlinesResponseBox() async {
    return await Hive.openBox<TopHeadlinesResponse>('TopHeadlineResponse');
  }

  @override
  Future<TopHeadlinesResponse?> getTopHeadlinesResponse(
      String country,
      String category,
      String query,
      ) async{
    Box<TopHeadlinesResponse> currentNewsBox = await _getTopHeadlinesResponseBox();
    TopHeadlinesResponse? topHeadlinesResponse = currentNewsBox.get(_createKey(country, category, query));
    await currentNewsBox.close();
    return topHeadlinesResponse;
  }

  @override
  Future<void> putTopHeadlinesResponse(
      TopHeadlinesResponse topHeadlinesResponse,
      String country,
      String category,
      String query,
      ) async {
    Box<TopHeadlinesResponse> currentNewsBox = await _getTopHeadlinesResponseBox();
    String key = _createKey(country, category, query);
    await currentNewsBox.delete(key);
    await currentNewsBox.put(key, topHeadlinesResponse);
    await currentNewsBox.flush();
    await currentNewsBox.close();
  }
}
