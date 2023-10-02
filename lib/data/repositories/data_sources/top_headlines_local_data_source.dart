import 'package:hive/hive.dart';

import '../../models/top_headlines_response.dart';

abstract class TopHeadlinesLocalDataSource {
  Future<TopHeadlinesResponse?> getTopHeadlinesResponse();
  Future<void> putTopHeadlinesResponse(TopHeadlinesResponse topHeadlinesResponse);
}

class TopHeadlinesLocalDataSourceImpl extends TopHeadlinesLocalDataSource {
  final String _topHeadlineResponseKey = 'TopHeadlineResponseKey';

  Future<Box<TopHeadlinesResponse>> _getTopHeadlinesResponseBox() async {
    return await Hive.openBox<TopHeadlinesResponse>('TopHeadlineResponse');
  }

  @override
  Future<TopHeadlinesResponse?> getTopHeadlinesResponse() async{
    Box<TopHeadlinesResponse> currentNewsBox = await _getTopHeadlinesResponseBox();
    TopHeadlinesResponse? topHeadlinesResponse = currentNewsBox.get(_topHeadlineResponseKey);
    await currentNewsBox.close();
    return topHeadlinesResponse;
  }

  @override
  Future<void> putTopHeadlinesResponse(
      TopHeadlinesResponse topHeadlinesResponse) async {
    Box<TopHeadlinesResponse> currentNewsBox = await _getTopHeadlinesResponseBox();
    await currentNewsBox.clear();
    await currentNewsBox.put(_topHeadlineResponseKey, topHeadlinesResponse);
    await currentNewsBox.close();
  }
}
