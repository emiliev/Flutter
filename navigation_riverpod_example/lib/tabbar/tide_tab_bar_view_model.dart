import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/map/state/map_state.dart';
import 'package:navigation_riverpod_example/tabbar/tide_tab_bar_state.dart';

final tabBarStateProvider =
    StateNotifierProvider<TideTabBarViewModel, TideTabBarState>((ref) {
  return TideTabBarViewModel(ref);
});

class TideTabBarViewModel extends StateNotifier<TideTabBarState> {
  final CupertinoTabController _controller;
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.map),
      label: "Map",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: "Account",
    ),
  ];
  ProviderRefBase _ref;

  TideTabBarViewModel(this._ref)
      : _controller = CupertinoTabController(),
        super(TideTabBarState.home());

  CupertinoTabController get controller => _controller;

  void selectTab(int index) {
    print("selectTab(int index)");
    _controller.index = index;
    _ref.read(mapConfigurationStateProvider.notifier).setSecondScreen(true);
  }
}
