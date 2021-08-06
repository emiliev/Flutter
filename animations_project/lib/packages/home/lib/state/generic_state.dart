import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_state.freezed.dart';

@freezed
abstract class GenericState<T> with _$GenericState {
  ///Initial
  const factory GenericState.initial() = _GenericStateInitial;

  ///Loading
  const factory GenericState.loading() = _GenericStateLoading;

  ///Data
  const factory GenericState.data({required T data}) = _GenericStateData;

  ///Error
  const factory GenericState.error([String? error]) = _GenericStateError;
}