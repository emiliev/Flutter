import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var isIOS = true;
void initState() {
  Platform.isIOS ? isIOS = true : isIOS = false;
}

class MyTopBar extends StatelessWidget {
  final String text;

  final String uniqueHeroTag;
  final Widget child;

  MyTopBar({
    required this.text,
    required this.uniqueHeroTag,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (!isIOS) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            text,
            style: TextStyle(),
          ),
        ),
        body: child,
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          heroTag: uniqueHeroTag,
          transitionBetweenRoutes: false,
          middle: Text(
            text,
            style: TextStyle(),
          ),
        ),
        child: child,
      );
    }
  }
}
