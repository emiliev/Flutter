import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_riverpod_example/home/views/home_view.dart';

class HomePage extends Page {
  const HomePage({
    LocalKey? key,
    Object? arguments,
  }) : super(key: key, arguments: arguments);

  @override
  Route createRoute(BuildContext context) {
    return CupertinoPageRoute(
      settings: this,
      builder: (BuildContext context) => HomeView(),
    );
  }
}
