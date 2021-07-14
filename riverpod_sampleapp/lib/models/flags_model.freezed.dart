// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'flags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlagsModel _$FlagsModelFromJson(Map<String, dynamic> json) {
  return _FlagsModel.fromJson(json);
}

/// @nodoc
class _$FlagsModelTearOff {
  const _$FlagsModelTearOff();

  _FlagsModel call(
      {bool explicit = true,
      bool nsfw = true,
      bool political = true,
      bool racist = true,
      bool religious = true,
      bool sexist = true}) {
    return _FlagsModel(
      explicit: explicit,
      nsfw: nsfw,
      political: political,
      racist: racist,
      religious: religious,
      sexist: sexist,
    );
  }

  FlagsModel fromJson(Map<String, Object> json) {
    return FlagsModel.fromJson(json);
  }
}

/// @nodoc
const $FlagsModel = _$FlagsModelTearOff();

/// @nodoc
mixin _$FlagsModel {
  bool get explicit => throw _privateConstructorUsedError;
  bool get nsfw => throw _privateConstructorUsedError;
  bool get political => throw _privateConstructorUsedError;
  bool get racist => throw _privateConstructorUsedError;
  bool get religious => throw _privateConstructorUsedError;
  bool get sexist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsModelCopyWith<FlagsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsModelCopyWith<$Res> {
  factory $FlagsModelCopyWith(
          FlagsModel value, $Res Function(FlagsModel) then) =
      _$FlagsModelCopyWithImpl<$Res>;
  $Res call(
      {bool explicit,
      bool nsfw,
      bool political,
      bool racist,
      bool religious,
      bool sexist});
}

/// @nodoc
class _$FlagsModelCopyWithImpl<$Res> implements $FlagsModelCopyWith<$Res> {
  _$FlagsModelCopyWithImpl(this._value, this._then);

  final FlagsModel _value;
  // ignore: unused_field
  final $Res Function(FlagsModel) _then;

  @override
  $Res call({
    Object? explicit = freezed,
    Object? nsfw = freezed,
    Object? political = freezed,
    Object? racist = freezed,
    Object? religious = freezed,
    Object? sexist = freezed,
  }) {
    return _then(_value.copyWith(
      explicit: explicit == freezed
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      nsfw: nsfw == freezed
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      political: political == freezed
          ? _value.political
          : political // ignore: cast_nullable_to_non_nullable
              as bool,
      racist: racist == freezed
          ? _value.racist
          : racist // ignore: cast_nullable_to_non_nullable
              as bool,
      religious: religious == freezed
          ? _value.religious
          : religious // ignore: cast_nullable_to_non_nullable
              as bool,
      sexist: sexist == freezed
          ? _value.sexist
          : sexist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FlagsModelCopyWith<$Res> implements $FlagsModelCopyWith<$Res> {
  factory _$FlagsModelCopyWith(
          _FlagsModel value, $Res Function(_FlagsModel) then) =
      __$FlagsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool explicit,
      bool nsfw,
      bool political,
      bool racist,
      bool religious,
      bool sexist});
}

/// @nodoc
class __$FlagsModelCopyWithImpl<$Res> extends _$FlagsModelCopyWithImpl<$Res>
    implements _$FlagsModelCopyWith<$Res> {
  __$FlagsModelCopyWithImpl(
      _FlagsModel _value, $Res Function(_FlagsModel) _then)
      : super(_value, (v) => _then(v as _FlagsModel));

  @override
  _FlagsModel get _value => super._value as _FlagsModel;

  @override
  $Res call({
    Object? explicit = freezed,
    Object? nsfw = freezed,
    Object? political = freezed,
    Object? racist = freezed,
    Object? religious = freezed,
    Object? sexist = freezed,
  }) {
    return _then(_FlagsModel(
      explicit: explicit == freezed
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      nsfw: nsfw == freezed
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      political: political == freezed
          ? _value.political
          : political // ignore: cast_nullable_to_non_nullable
              as bool,
      racist: racist == freezed
          ? _value.racist
          : racist // ignore: cast_nullable_to_non_nullable
              as bool,
      religious: religious == freezed
          ? _value.religious
          : religious // ignore: cast_nullable_to_non_nullable
              as bool,
      sexist: sexist == freezed
          ? _value.sexist
          : sexist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FlagsModel implements _FlagsModel {
  const _$_FlagsModel(
      {this.explicit = true,
      this.nsfw = true,
      this.political = true,
      this.racist = true,
      this.religious = true,
      this.sexist = true});

  factory _$_FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FlagsModelFromJson(json);

  @JsonKey(defaultValue: true)
  @override
  final bool explicit;
  @JsonKey(defaultValue: true)
  @override
  final bool nsfw;
  @JsonKey(defaultValue: true)
  @override
  final bool political;
  @JsonKey(defaultValue: true)
  @override
  final bool racist;
  @JsonKey(defaultValue: true)
  @override
  final bool religious;
  @JsonKey(defaultValue: true)
  @override
  final bool sexist;

  @override
  String toString() {
    return 'FlagsModel(explicit: $explicit, nsfw: $nsfw, political: $political, racist: $racist, religious: $religious, sexist: $sexist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlagsModel &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.nsfw, nsfw) ||
                const DeepCollectionEquality().equals(other.nsfw, nsfw)) &&
            (identical(other.political, political) ||
                const DeepCollectionEquality()
                    .equals(other.political, political)) &&
            (identical(other.racist, racist) ||
                const DeepCollectionEquality().equals(other.racist, racist)) &&
            (identical(other.religious, religious) ||
                const DeepCollectionEquality()
                    .equals(other.religious, religious)) &&
            (identical(other.sexist, sexist) ||
                const DeepCollectionEquality().equals(other.sexist, sexist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(nsfw) ^
      const DeepCollectionEquality().hash(political) ^
      const DeepCollectionEquality().hash(racist) ^
      const DeepCollectionEquality().hash(religious) ^
      const DeepCollectionEquality().hash(sexist);

  @JsonKey(ignore: true)
  @override
  _$FlagsModelCopyWith<_FlagsModel> get copyWith =>
      __$FlagsModelCopyWithImpl<_FlagsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlagsModelToJson(this);
  }
}

abstract class _FlagsModel implements FlagsModel {
  const factory _FlagsModel(
      {bool explicit,
      bool nsfw,
      bool political,
      bool racist,
      bool religious,
      bool sexist}) = _$_FlagsModel;

  factory _FlagsModel.fromJson(Map<String, dynamic> json) =
      _$_FlagsModel.fromJson;

  @override
  bool get explicit => throw _privateConstructorUsedError;
  @override
  bool get nsfw => throw _privateConstructorUsedError;
  @override
  bool get political => throw _privateConstructorUsedError;
  @override
  bool get racist => throw _privateConstructorUsedError;
  @override
  bool get religious => throw _privateConstructorUsedError;
  @override
  bool get sexist => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlagsModelCopyWith<_FlagsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
