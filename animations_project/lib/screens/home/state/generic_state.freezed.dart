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

  _GenericStateInitial<T> initial<T>() {
    return _GenericStateInitial<T>();
  }

  _GenericStateLoading<T> loading<T>() {
    return _GenericStateLoading<T>();
  }

  _GenericStateData<T> data<T>({required T data}) {
    return _GenericStateData<T>(
      data: data,
    );
  }

  _GenericStateError<T> error<T>([String? error]) {
    return _GenericStateError<T>(
      error,
    );
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
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericStateInitial<T> value) initial,
    required TResult Function(_GenericStateLoading<T> value) loading,
    required TResult Function(_GenericStateData<T> value) data,
    required TResult Function(_GenericStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStateInitial<T> value)? initial,
    TResult Function(_GenericStateLoading<T> value)? loading,
    TResult Function(_GenericStateData<T> value)? data,
    TResult Function(_GenericStateError<T> value)? error,
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
abstract class _$GenericStateInitialCopyWith<T, $Res> {
  factory _$GenericStateInitialCopyWith(_GenericStateInitial<T> value,
          $Res Function(_GenericStateInitial<T>) then) =
      __$GenericStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GenericStateInitialCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericStateInitialCopyWith<T, $Res> {
  __$GenericStateInitialCopyWithImpl(_GenericStateInitial<T> _value,
      $Res Function(_GenericStateInitial<T>) _then)
      : super(_value, (v) => _then(v as _GenericStateInitial<T>));

  @override
  _GenericStateInitial<T> get _value => super._value as _GenericStateInitial<T>;
}

/// @nodoc
class _$_GenericStateInitial<T> implements _GenericStateInitial<T> {
  const _$_GenericStateInitial();

  @override
  String toString() {
    return 'GenericState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GenericStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(_GenericStateInitial<T> value) initial,
    required TResult Function(_GenericStateLoading<T> value) loading,
    required TResult Function(_GenericStateData<T> value) data,
    required TResult Function(_GenericStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStateInitial<T> value)? initial,
    TResult Function(_GenericStateLoading<T> value)? loading,
    TResult Function(_GenericStateData<T> value)? data,
    TResult Function(_GenericStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GenericStateInitial<T> implements GenericState<T> {
  const factory _GenericStateInitial() = _$_GenericStateInitial<T>;
}

/// @nodoc
abstract class _$GenericStateLoadingCopyWith<T, $Res> {
  factory _$GenericStateLoadingCopyWith(_GenericStateLoading<T> value,
          $Res Function(_GenericStateLoading<T>) then) =
      __$GenericStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GenericStateLoadingCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericStateLoadingCopyWith<T, $Res> {
  __$GenericStateLoadingCopyWithImpl(_GenericStateLoading<T> _value,
      $Res Function(_GenericStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _GenericStateLoading<T>));

  @override
  _GenericStateLoading<T> get _value => super._value as _GenericStateLoading<T>;
}

/// @nodoc
class _$_GenericStateLoading<T> implements _GenericStateLoading<T> {
  const _$_GenericStateLoading();

  @override
  String toString() {
    return 'GenericState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GenericStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(_GenericStateInitial<T> value) initial,
    required TResult Function(_GenericStateLoading<T> value) loading,
    required TResult Function(_GenericStateData<T> value) data,
    required TResult Function(_GenericStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStateInitial<T> value)? initial,
    TResult Function(_GenericStateLoading<T> value)? loading,
    TResult Function(_GenericStateData<T> value)? data,
    TResult Function(_GenericStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GenericStateLoading<T> implements GenericState<T> {
  const factory _GenericStateLoading() = _$_GenericStateLoading<T>;
}

/// @nodoc
abstract class _$GenericStateDataCopyWith<T, $Res> {
  factory _$GenericStateDataCopyWith(_GenericStateData<T> value,
          $Res Function(_GenericStateData<T>) then) =
      __$GenericStateDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$GenericStateDataCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericStateDataCopyWith<T, $Res> {
  __$GenericStateDataCopyWithImpl(
      _GenericStateData<T> _value, $Res Function(_GenericStateData<T>) _then)
      : super(_value, (v) => _then(v as _GenericStateData<T>));

  @override
  _GenericStateData<T> get _value => super._value as _GenericStateData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GenericStateData<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_GenericStateData<T> implements _GenericStateData<T> {
  const _$_GenericStateData({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'GenericState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericStateData<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GenericStateDataCopyWith<T, _GenericStateData<T>> get copyWith =>
      __$GenericStateDataCopyWithImpl<T, _GenericStateData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericStateInitial<T> value) initial,
    required TResult Function(_GenericStateLoading<T> value) loading,
    required TResult Function(_GenericStateData<T> value) data,
    required TResult Function(_GenericStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStateInitial<T> value)? initial,
    TResult Function(_GenericStateLoading<T> value)? loading,
    TResult Function(_GenericStateData<T> value)? data,
    TResult Function(_GenericStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _GenericStateData<T> implements GenericState<T> {
  const factory _GenericStateData({required T data}) = _$_GenericStateData<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericStateDataCopyWith<T, _GenericStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenericStateErrorCopyWith<T, $Res> {
  factory _$GenericStateErrorCopyWith(_GenericStateError<T> value,
          $Res Function(_GenericStateError<T>) then) =
      __$GenericStateErrorCopyWithImpl<T, $Res>;
  $Res call({String? error});
}

/// @nodoc
class __$GenericStateErrorCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res>
    implements _$GenericStateErrorCopyWith<T, $Res> {
  __$GenericStateErrorCopyWithImpl(
      _GenericStateError<T> _value, $Res Function(_GenericStateError<T>) _then)
      : super(_value, (v) => _then(v as _GenericStateError<T>));

  @override
  _GenericStateError<T> get _value => super._value as _GenericStateError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_GenericStateError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_GenericStateError<T> implements _GenericStateError<T> {
  const _$_GenericStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'GenericState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericStateError<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$GenericStateErrorCopyWith<T, _GenericStateError<T>> get copyWith =>
      __$GenericStateErrorCopyWithImpl<T, _GenericStateError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericStateInitial<T> value) initial,
    required TResult Function(_GenericStateLoading<T> value) loading,
    required TResult Function(_GenericStateData<T> value) data,
    required TResult Function(_GenericStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStateInitial<T> value)? initial,
    TResult Function(_GenericStateLoading<T> value)? loading,
    TResult Function(_GenericStateData<T> value)? data,
    TResult Function(_GenericStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenericStateError<T> implements GenericState<T> {
  const factory _GenericStateError([String? error]) = _$_GenericStateError<T>;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericStateErrorCopyWith<T, _GenericStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
