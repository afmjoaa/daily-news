import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../api_provider/base_api_provider.dart';
import '../../models/base_model/base_model.dart';

abstract class BaseApi<TQuery extends BaseModel, TRes extends BaseModel, TErr extends BaseModel> {
  String url;
  BaseApiProvider apiProvider;

  BaseApi(this.url, this.apiProvider);

  Future<Response<Map<String, dynamic>>> getRaw(
      {
        Map<String, String>? headers,
        Map<String, dynamic>? queryParameters
      }) async {
    Response<Map<String, dynamic>> response = await apiProvider.dio.get(
      url,
      options: Options(
        headers: headers ?? {'Content-Type': 'application/json'},
        sendTimeout: BaseApiProvider.connectTimeout,
        receiveTimeout: BaseApiProvider.receiveTimeout,
      ),
      queryParameters: queryParameters
    );
    return response;
  }

  Future<Either<TRes, TErr>> get({Map<String, String>? headers, Map<String, dynamic>? queryParameters}) async {

    try {
      Response<Map<String, dynamic>> response = await getRaw(headers: headers, queryParameters: queryParameters);
      return Left(mapSuccessResponse(response.data) as TRes);
    } on DioError catch (err) {
      if (err.response != null && err.response!.data != null) {
        return Right(mapErrorResponse(err.response!.data) as TErr);
      }
      return Right(mapErrorResponse({"cod":9999, "message": "Internal network error"}) as TErr);
    }
  }

  BaseModel mapSuccessResponse(Map<String, dynamic>? responseJson);
  BaseModel mapErrorResponse(Map<String, dynamic>? errorJson);
}
