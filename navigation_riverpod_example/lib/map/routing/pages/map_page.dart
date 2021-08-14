import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/map/state/map_state.dart';
import 'package:navigation_riverpod_example/map/views/widget_view.dart';

class MapPage extends Page {
  final WidgetRef _ref;
  const MapPage(
    this._ref, {
    LocalKey? key,
    Object? arguments,
  }) : super(key: key, arguments: arguments);

  @override
  Route createRoute(BuildContext context) {
    return CupertinoPageRoute(
      settings: this,
      builder: (BuildContext context) {
        // final ref = context as WidgetRef;
        return GenericTabView(
          "Map Widget",
          "map widget hero",
          "Next screen",
          () {
            _ref
                .read(mapConfigurationStateProvider.notifier)
                .setFirstScreen(true);
          },
          Colors.blue,
        );
      },
    );
  }
}
