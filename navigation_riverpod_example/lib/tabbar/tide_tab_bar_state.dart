import 'package:freezed_annotation/freezed_annotation.dart';

part 'tide_tab_bar_state.freezed.dart';

@freezed
abstract class TideTabBarState with _$TideTabBarState {
  const factory TideTabBarState.home() = _TideTabBarHome;
  const factory TideTabBarState.map() = _TideTabBarMap;
  const factory TideTabBarState.account() = _TideTabBarAccount;
}
