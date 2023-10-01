// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$InitialLoadingState implements InitialLoadingState {
  const _$InitialLoadingState();

  @override
  String toString() {
    return 'LoadingState.initialLoadingState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) {
    return initialLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) {
    if (initialLoadingState != null) {
      return initialLoadingState();
    }
    return orElse();
  }
}

abstract class InitialLoadingState implements LoadingState {
  const factory InitialLoadingState() = _$InitialLoadingState;
}

/// @nodoc

class _$LoadingStartedState implements LoadingStartedState {
  const _$LoadingStartedState();

  @override
  String toString() {
    return 'LoadingState.loadingStartedState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) {
    return loadingStartedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) {
    if (loadingStartedState != null) {
      return loadingStartedState();
    }
    return orElse();
  }
}

abstract class LoadingStartedState implements LoadingState {
  const factory LoadingStartedState() = _$LoadingStartedState;
}

/// @nodoc

class _$LoadingFailedState implements LoadingFailedState {
  const _$LoadingFailedState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoadingState.loadingFailedState(errorMessage: $errorMessage)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) {
    return loadingFailedState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) {
    if (loadingFailedState != null) {
      return loadingFailedState(errorMessage);
    }
    return orElse();
  }
}

abstract class LoadingFailedState implements LoadingState {
  const factory LoadingFailedState(final String errorMessage) =
      _$LoadingFailedState;

  String get errorMessage => throw _privateConstructorUsedError;
}

/// @nodoc

class _$LoadingSuccessState implements LoadingSuccessState {
  const _$LoadingSuccessState();

  @override
  String toString() {
    return 'LoadingState.loadingSuccessState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) {
    return loadingSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) {
    if (loadingSuccessState != null) {
      return loadingSuccessState();
    }
    return orElse();
  }
}

abstract class LoadingSuccessState implements LoadingState {
  const factory LoadingSuccessState() = _$LoadingSuccessState;
}

/// @nodoc

class _$LoadingCompletedState implements LoadingCompletedState {
  const _$LoadingCompletedState();

  @override
  String toString() {
    return 'LoadingState.loadingCompletedState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingStartedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function() loadingSuccessState,
    required TResult Function() loadingCompletedState,
  }) {
    return loadingCompletedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingStartedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function()? loadingSuccessState,
    TResult Function()? loadingCompletedState,
    required TResult orElse(),
  }) {
    if (loadingCompletedState != null) {
      return loadingCompletedState();
    }
    return orElse();
  }
}

abstract class LoadingCompletedState implements LoadingState {
  const factory LoadingCompletedState() = _$LoadingCompletedState;
}
