import 'package:flutter/material.dart';
import 'package:navigation_riverpod_example/home/views/home_details.dart';

class DetailsPage extends Page {
  final int _bookId;

  DetailsPage(
    this._bookId, {
    LocalKey? key,
    Object? arguments,
  }) : super(key: key, arguments: arguments);

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (_) => BookDetailView(_bookId),
    );
  }
}
