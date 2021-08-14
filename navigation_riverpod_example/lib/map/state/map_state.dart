import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_state.freezed.dart';

@freezed
abstract class MapConfigurationState with _$MapConfigurationState {
  const MapConfigurationState._();
  const factory MapConfigurationState(
      {@Default(false) bool firstScreen,
      @Default(false) bool secondScreen}) = _MapConfigurationState;
}

final mapConfigurationStateProvider =
    StateNotifierProvider<MapStateController, MapConfigurationState>(
        (_) => MapStateController());

class MapStateController extends StateNotifier<MapConfigurationState> {
  MapStateController() : super(MapConfigurationState());

  void setFirstScreen(bool value) {
    state = state.copyWith(firstScreen: value);
  }

  void setSecondScreen(bool value) {
    state = state.copyWith(secondScreen: value);
  }
}
