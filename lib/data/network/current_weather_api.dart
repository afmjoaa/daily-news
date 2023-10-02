import '../../core/service_locator.dart';
import '../api_provider/sunny_api_provider.dart';
import '../models/base_model/base_model.dart';
import '../models/error_response.dart';
import '../models/top_headlines_query_params.dart';
import '../models/top_headlines_response.dart';
import 'base_api/base_api.dart';

class TopHeadlinesApi extends BaseApi<
    TopHeadlinesQueryParams,
    TopHeadlinesResponse,
    ErrorResponse> {

  TopHeadlinesApi()
      : super(SunnyApiProvider.topHeadlines, sl<SunnyApiProvider>());

  @override
  BaseModel mapErrorResponse(Map<String, dynamic>? errorJson) {
    return ErrorResponse.fromJson(errorJson!);
  }

  @override
  BaseModel mapSuccessResponse(Map<String, dynamic>? responseJson) {
    return TopHeadlinesResponse.fromJson(responseJson!);
  }

}