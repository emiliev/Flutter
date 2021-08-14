import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/routing/home_route_path.dart';
import 'package:navigation_riverpod_example/home/state/home_state.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  final WidgetRef ref;

  AppRouteInformationParser(this.ref);

  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    print("home parse route information");
    Uri uri = Uri.parse(routeInformation.location!);

    if (uri.path.length < 2) {
      return HomeRoute();
    }

    int? bookId = int.tryParse(uri.pathSegments[1]);
    if (uri.pathSegments[0] == 'book' && bookId != null) {
      return BookDetailRoute(bookId);
    }
    return HomeRoute();
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    print("home restoreRouteInformation");
    HomeConfiguration configuration = ref.read(homeStateProvider);
    if (path is BookDetailRoute) {
      return RouteInformation(location: '/book/' + configuration.id.toString());
    } else {
      return RouteInformation(location: '/');
    }
  }
}
