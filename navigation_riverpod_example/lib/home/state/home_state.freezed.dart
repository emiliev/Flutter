// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeConfigurationTearOff {
  const _$HomeConfigurationTearOff();

  _HomeConfiguration call(
      {int? id, Book? selectedBook, bool purpleTap = false}) {
    return _HomeConfiguration(
      id: id,
      selectedBook: selectedBook,
      purpleTap: purpleTap,
    );
  }
}

/// @nodoc
const $HomeConfiguration = _$HomeConfigurationTearOff();

/// @nodoc
mixin _$HomeConfiguration {
  int? get id => throw _privateConstructorUsedError;
  Book? get selectedBook => throw _privateConstructorUsedError;
  bool get purpleTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeConfigurationCopyWith<HomeConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeConfigurationCopyWith<$Res> {
  factory $HomeConfigurationCopyWith(
          HomeConfiguration value, $Res Function(HomeConfiguration) then) =
      _$HomeConfigurationCopyWithImpl<$Res>;
  $Res call({int? id, Book? selectedBook, bool purpleTap});
}

/// @nodoc
class _$HomeConfigurationCopyWithImpl<$Res>
    implements $HomeConfigurationCopyWith<$Res> {
  _$HomeConfigurationCopyWithImpl(this._value, this._then);

  final HomeConfiguration _value;
  // ignore: unused_field
  final $Res Function(HomeConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? selectedBook = freezed,
    Object? purpleTap = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedBook: selectedBook == freezed
          ? _value.selectedBook
          : selectedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
      purpleTap: purpleTap == freezed
          ? _value.purpleTap
          : purpleTap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeConfigurationCopyWith<$Res>
    implements $HomeConfigurationCopyWith<$Res> {
  factory _$HomeConfigurationCopyWith(
          _HomeConfiguration value, $Res Function(_HomeConfiguration) then) =
      __$HomeConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({int? id, Book? selectedBook, bool purpleTap});
}

/// @nodoc
class __$HomeConfigurationCopyWithImpl<$Res>
    extends _$HomeConfigurationCopyWithImpl<$Res>
    implements _$HomeConfigurationCopyWith<$Res> {
  __$HomeConfigurationCopyWithImpl(
      _HomeConfiguration _value, $Res Function(_HomeConfiguration) _then)
      : super(_value, (v) => _then(v as _HomeConfiguration));

  @override
  _HomeConfiguration get _value => super._value as _HomeConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? selectedBook = freezed,
    Object? purpleTap = freezed,
  }) {
    return _then(_HomeConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedBook: selectedBook == freezed
          ? _value.selectedBook
          : selectedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
      purpleTap: purpleTap == freezed
          ? _value.purpleTap
          : purpleTap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeConfiguration extends _HomeConfiguration {
  const _$_HomeConfiguration(
      {this.id, this.selectedBook, this.purpleTap = false})
      : super._();

  @override
  final int? id;
  @override
  final Book? selectedBook;
  @JsonKey(defaultValue: false)
  @override
  final bool purpleTap;

  @override
  String toString() {
    return 'HomeConfiguration(id: $id, selectedBook: $selectedBook, purpleTap: $purpleTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.selectedBook, selectedBook) ||
                const DeepCollectionEquality()
                    .equals(other.selectedBook, selectedBook)) &&
            (identical(other.purpleTap, purpleTap) ||
                const DeepCollectionEquality()
                    .equals(other.purpleTap, purpleTap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(selectedBook) ^
      const DeepCollectionEquality().hash(purpleTap);

  @JsonKey(ignore: true)
  @override
  _$HomeConfigurationCopyWith<_HomeConfiguration> get copyWith =>
      __$HomeConfigurationCopyWithImpl<_HomeConfiguration>(this, _$identity);
}

abstract class _HomeConfiguration extends HomeConfiguration {
  const factory _HomeConfiguration(
      {int? id, Book? selectedBook, bool purpleTap}) = _$_HomeConfiguration;
  const _HomeConfiguration._() : super._();

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  Book? get selectedBook => throw _privateConstructorUsedError;
  @override
  bool get purpleTap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeConfigurationCopyWith<_HomeConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
