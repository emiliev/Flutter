import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_state.freezed.dart';

@freezed
abstract class GenericState<T> with _$GenericState {
  const factory GenericState.initial() = _GenericInitialState;
  const factory GenericState.loading() = _GenericLoadingState;
  const factory GenericState.success(T data) = _GenericSuccessState;
  const factory GenericState.error() = _GenericErrorState;
}
