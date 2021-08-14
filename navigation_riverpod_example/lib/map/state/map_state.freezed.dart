// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapConfigurationStateTearOff {
  const _$MapConfigurationStateTearOff();

  _MapConfigurationState call(
      {bool firstScreen = false, bool secondScreen = false}) {
    return _MapConfigurationState(
      firstScreen: firstScreen,
      secondScreen: secondScreen,
    );
  }
}

/// @nodoc
const $MapConfigurationState = _$MapConfigurationStateTearOff();

/// @nodoc
mixin _$MapConfigurationState {
  bool get firstScreen => throw _privateConstructorUsedError;
  bool get secondScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapConfigurationStateCopyWith<MapConfigurationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapConfigurationStateCopyWith<$Res> {
  factory $MapConfigurationStateCopyWith(MapConfigurationState value,
          $Res Function(MapConfigurationState) then) =
      _$MapConfigurationStateCopyWithImpl<$Res>;
  $Res call({bool firstScreen, bool secondScreen});
}

/// @nodoc
class _$MapConfigurationStateCopyWithImpl<$Res>
    implements $MapConfigurationStateCopyWith<$Res> {
  _$MapConfigurationStateCopyWithImpl(this._value, this._then);

  final MapConfigurationState _value;
  // ignore: unused_field
  final $Res Function(MapConfigurationState) _then;

  @override
  $Res call({
    Object? firstScreen = freezed,
    Object? secondScreen = freezed,
  }) {
    return _then(_value.copyWith(
      firstScreen: firstScreen == freezed
          ? _value.firstScreen
          : firstScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      secondScreen: secondScreen == freezed
          ? _value.secondScreen
          : secondScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MapConfigurationStateCopyWith<$Res>
    implements $MapConfigurationStateCopyWith<$Res> {
  factory _$MapConfigurationStateCopyWith(_MapConfigurationState value,
          $Res Function(_MapConfigurationState) then) =
      __$MapConfigurationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool firstScreen, bool secondScreen});
}

/// @nodoc
class __$MapConfigurationStateCopyWithImpl<$Res>
    extends _$MapConfigurationStateCopyWithImpl<$Res>
    implements _$MapConfigurationStateCopyWith<$Res> {
  __$MapConfigurationStateCopyWithImpl(_MapConfigurationState _value,
      $Res Function(_MapConfigurationState) _then)
      : super(_value, (v) => _then(v as _MapConfigurationState));

  @override
  _MapConfigurationState get _value => super._value as _MapConfigurationState;

  @override
  $Res call({
    Object? firstScreen = freezed,
    Object? secondScreen = freezed,
  }) {
    return _then(_MapConfigurationState(
      firstScreen: firstScreen == freezed
          ? _value.firstScreen
          : firstScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      secondScreen: secondScreen == freezed
          ? _value.secondScreen
          : secondScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MapConfigurationState extends _MapConfigurationState {
  const _$_MapConfigurationState(
      {this.firstScreen = false, this.secondScreen = false})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool firstScreen;
  @JsonKey(defaultValue: false)
  @override
  final bool secondScreen;

  @override
  String toString() {
    return 'MapConfigurationState(firstScreen: $firstScreen, secondScreen: $secondScreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapConfigurationState &&
            (identical(other.firstScreen, firstScreen) ||
                const DeepCollectionEquality()
                    .equals(other.firstScreen, firstScreen)) &&
            (identical(other.secondScreen, secondScreen) ||
                const DeepCollectionEquality()
                    .equals(other.secondScreen, secondScreen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstScreen) ^
      const DeepCollectionEquality().hash(secondScreen);

  @JsonKey(ignore: true)
  @override
  _$MapConfigurationStateCopyWith<_MapConfigurationState> get copyWith =>
      __$MapConfigurationStateCopyWithImpl<_MapConfigurationState>(
          this, _$identity);
}

abstract class _MapConfigurationState extends MapConfigurationState {
  const factory _MapConfigurationState({bool firstScreen, bool secondScreen}) =
      _$_MapConfigurationState;
  const _MapConfigurationState._() : super._();

  @override
  bool get firstScreen => throw _privateConstructorUsedError;
  @override
  bool get secondScreen => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapConfigurationStateCopyWith<_MapConfigurationState> get copyWith =>
      throw _privateConstructorUsedError;
}
