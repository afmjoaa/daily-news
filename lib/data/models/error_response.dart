import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:daily_news/data/models/base_model/base_model.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class ErrorResponse extends BaseModel<ErrorResponse> with _$ErrorResponse {
  const factory ErrorResponse(
    int cod,
    String message,
  ) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
