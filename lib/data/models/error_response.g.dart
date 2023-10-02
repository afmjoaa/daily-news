// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      json['status'] as String,
      json['code'] as String,
      json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };
