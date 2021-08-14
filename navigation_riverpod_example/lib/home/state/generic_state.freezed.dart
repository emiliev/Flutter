// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'generic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenericStateTearOff {
  const _$GenericStateTearOff();

  _GenericInitialState<T> initial<T>() {
    return _GenericInitialState<T>();
  }

  _GenericLoadingState<T> loading<T>() {
    return _GenericLoadingState<T>();
  }

  _GenericSuccessState<T> success<T>(T data) {
    return _GenericSuccessState<T>(
      data,
    );
  }

  _GenericErrorState<T> error<T>() {
    return _GenericErrorState<T>();
  }
}

/// @nodoc
const $GenericState = _$GenericStateTearOff();

/// @nodoc
mixin _$GenericState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericInitialState<T> value) initial,
    required TResult Function(_GenericLoadingState<T> value) loading,
    required TResult Function(_GenericSuccessState<T> value) success,
    required TResult Function(_GenericErrorState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericInitialState<T> value)? initial,
    TResult Function(_GenericLoadingState<T> value)? loading,
    TResult Function(_GenericSuccessState<T> value)? success,
    TResult Function(_GenericErrorState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericStateCopyWith<T, $Res> {
  factory $GenericStateCopyWith(
          GenericState<T> value, $Res Function(GenericState<T>) then) =
      _$GenericStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$GenericStateCopyWithImpl<T, $Res>
    implements $GenericStateCopyWith<T, $Res> {
  _$GenericStateCopyWithImpl(this._value, this._then);

  final GenericState<T> _value;
  // ignore: unused_field
  final $Res Function(GenericState<T>) _then;
}

/// @nodoc
abstract class _$GenericInitialStateCopyWith<T, $Res> {
  factory _$GenericInitialStateCopyWith(_GenericInitialState<T> value,
          $Res Function(_GenericInitialState<T>) then) =
      __$GenericInitialStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GenericInitialStateCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericInitialStateCopyWith<T, $Res> {
  __$GenericInitialStateCopyWithImpl(_GenericInitialState<T> _value,
      $Res Function(_GenericInitialState<T>) _then)
      : super(_value, (v) => _then(v as _GenericInitialState<T>));

  @override
  _GenericInitialState<T> get _value => super._value as _GenericInitialState<T>;
}

/// @nodoc

class _$_GenericInitialState<T> implements _GenericInitialState<T> {
  const _$_GenericInitialState();

  @override
  String toString() {
    return 'GenericState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GenericInitialState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericInitialState<T> value) initial,
    required TResult Function(_GenericLoadingState<T> value) loading,
    required TResult Function(_GenericSuccessState<T> value) success,
    required TResult Function(_GenericErrorState<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericInitialState<T> value)? initial,
    TResult Function(_GenericLoadingState<T> value)? loading,
    TResult Function(_GenericSuccessState<T> value)? success,
    TResult Function(_GenericErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GenericInitialState<T> implements GenericState<T> {
  const factory _GenericInitialState() = _$_GenericInitialState<T>;
}

/// @nodoc
abstract class _$GenericLoadingStateCopyWith<T, $Res> {
  factory _$GenericLoadingStateCopyWith(_GenericLoadingState<T> value,
          $Res Function(_GenericLoadingState<T>) then) =
      __$GenericLoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GenericLoadingStateCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericLoadingStateCopyWith<T, $Res> {
  __$GenericLoadingStateCopyWithImpl(_GenericLoadingState<T> _value,
      $Res Function(_GenericLoadingState<T>) _then)
      : super(_value, (v) => _then(v as _GenericLoadingState<T>));

  @override
  _GenericLoadingState<T> get _value => super._value as _GenericLoadingState<T>;
}

/// @nodoc

class _$_GenericLoadingState<T> implements _GenericLoadingState<T> {
  const _$_GenericLoadingState();

  @override
  String toString() {
    return 'GenericState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GenericLoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericInitialState<T> value) initial,
    required TResult Function(_GenericLoadingState<T> value) loading,
    required TResult Function(_GenericSuccessState<T> value) success,
    required TResult Function(_GenericErrorState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericInitialState<T> value)? initial,
    TResult Function(_GenericLoadingState<T> value)? loading,
    TResult Function(_GenericSuccessState<T> value)? success,
    TResult Function(_GenericErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GenericLoadingState<T> implements GenericState<T> {
  const factory _GenericLoadingState() = _$_GenericLoadingState<T>;
}

/// @nodoc
abstract class _$GenericSuccessStateCopyWith<T, $Res> {
  factory _$GenericSuccessStateCopyWith(_GenericSuccessState<T> value,
          $Res Function(_GenericSuccessState<T>) then) =
      __$GenericSuccessStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$GenericSuccessStateCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericSuccessStateCopyWith<T, $Res> {
  __$GenericSuccessStateCopyWithImpl(_GenericSuccessState<T> _value,
      $Res Function(_GenericSuccessState<T>) _then)
      : super(_value, (v) => _then(v as _GenericSuccessState<T>));

  @override
  _GenericSuccessState<T> get _value => super._value as _GenericSuccessState<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GenericSuccessState<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_GenericSuccessState<T> implements _GenericSuccessState<T> {
  const _$_GenericSuccessState(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GenericState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericSuccessState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GenericSuccessStateCopyWith<T, _GenericSuccessState<T>> get copyWith =>
      __$GenericSuccessStateCopyWithImpl<T, _GenericSuccessState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericInitialState<T> value) initial,
    required TResult Function(_GenericLoadingState<T> value) loading,
    required TResult Function(_GenericSuccessState<T> value) success,
    required TResult Function(_GenericErrorState<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericInitialState<T> value)? initial,
    TResult Function(_GenericLoadingState<T> value)? loading,
    TResult Function(_GenericSuccessState<T> value)? success,
    TResult Function(_GenericErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GenericSuccessState<T> implements GenericState<T> {
  const factory _GenericSuccessState(T data) = _$_GenericSuccessState<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericSuccessStateCopyWith<T, _GenericSuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenericErrorStateCopyWith<T, $Res> {
  factory _$GenericErrorStateCopyWith(_GenericErrorState<T> value,
          $Res Function(_GenericErrorState<T>) then) =
      __$GenericErrorStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GenericErrorStateCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericErrorStateCopyWith<T, $Res> {
  __$GenericErrorStateCopyWithImpl(
      _GenericErrorState<T> _value, $Res Function(_GenericErrorState<T>) _then)
      : super(_value, (v) => _then(v as _GenericErrorState<T>));

  @override
  _GenericErrorState<T> get _value => super._value as _GenericErrorState<T>;
}

/// @nodoc

class _$_GenericErrorState<T> implements _GenericErrorState<T> {
  const _$_GenericErrorState();

  @override
  String toString() {
    return 'GenericState<$T>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GenericErrorState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericInitialState<T> value) initial,
    required TResult Function(_GenericLoadingState<T> value) loading,
    required TResult Function(_GenericSuccessState<T> value) success,
    required TResult Function(_GenericErrorState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericInitialState<T> value)? initial,
    TResult Function(_GenericLoadingState<T> value)? loading,
    TResult Function(_GenericSuccessState<T> value)? success,
    TResult Function(_GenericErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenericErrorState<T> implements GenericState<T> {
  const factory _GenericErrorState() = _$_GenericErrorState<T>;
}
