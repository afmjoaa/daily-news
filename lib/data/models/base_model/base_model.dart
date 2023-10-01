import 'dart:convert';

abstract class BaseModel<T> {
  const BaseModel();

  Map<String, dynamic> toJson() => {};

  @override
  String toString() => json.encode(toJson());
}