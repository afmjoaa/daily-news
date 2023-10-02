// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitialState,
    required TResult Function(TopHeadlines topHeadlines) dataAvailableState,
    required TResult Function(String reason) dataUnavailableState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitialState,
    TResult Function(TopHeadlines topHeadlines)? dataAvailableState,
    TResult Function(String reason)? dataUnavailableState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$HomeInitialState implements HomeInitialState {
  const _$HomeInitialState();

  @override
  String toString() {
    return 'HomeState.homeInitialState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitialState,
    required TResult Function(TopHeadlines topHeadlines) dataAvailableState,
    required TResult Function(String reason) dataUnavailableState,
  }) {
    return homeInitialState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitialState,
    TResult Function(TopHeadlines topHeadlines)? dataAvailableState,
    TResult Function(String reason)? dataUnavailableState,
    required TResult orElse(),
  }) {
    if (homeInitialState != null) {
      return homeInitialState();
    }
    return orElse();
  }
}

abstract class HomeInitialState implements HomeState {
  const factory HomeInitialState() = _$HomeInitialState;
}

/// @nodoc

class _$DataAvailableState implements DataAvailableState {
  const _$DataAvailableState(this.topHeadlines);

  @override
  final TopHeadlines topHeadlines;

  @override
  String toString() {
    return 'HomeState.dataAvailableState(topHeadlines: $topHeadlines)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitialState,
    required TResult Function(TopHeadlines topHeadlines) dataAvailableState,
    required TResult Function(String reason) dataUnavailableState,
  }) {
    return dataAvailableState(topHeadlines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitialState,
    TResult Function(TopHeadlines topHeadlines)? dataAvailableState,
    TResult Function(String reason)? dataUnavailableState,
    required TResult orElse(),
  }) {
    if (dataAvailableState != null) {
      return dataAvailableState(topHeadlines);
    }
    return orElse();
  }
}

abstract class DataAvailableState implements HomeState {
  const factory DataAvailableState(final TopHeadlines topHeadlines) =
      _$DataAvailableState;

  TopHeadlines get topHeadlines;
}

/// @nodoc

class _$DataUnavailableState implements DataUnavailableState {
  const _$DataUnavailableState(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'HomeState.dataUnavailableState(reason: $reason)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitialState,
    required TResult Function(TopHeadlines topHeadlines) dataAvailableState,
    required TResult Function(String reason) dataUnavailableState,
  }) {
    return dataUnavailableState(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitialState,
    TResult Function(TopHeadlines topHeadlines)? dataAvailableState,
    TResult Function(String reason)? dataUnavailableState,
    required TResult orElse(),
  }) {
    if (dataUnavailableState != null) {
      return dataUnavailableState(reason);
    }
    return orElse();
  }
}

abstract class DataUnavailableState implements HomeState {
  const factory DataUnavailableState(final String reason) =
      _$DataUnavailableState;

  String get reason;
}
