import 'package:flutter/cupertino.dart';
import 'package:navigation_riverpod_example/tabbar/tide_tab_bar.dart';

class PurplePage extends Page {
  const PurplePage({
    LocalKey? key,
    Object? arguments,
  }) : super(key: key, arguments: arguments);

  @override
  Route createRoute(BuildContext context) {
    return CupertinoPageRoute(
      settings: this,
      builder: (BuildContext context) => PurpleView(),
    );
  }
}
