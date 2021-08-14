import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/routing/home_route_path.dart';
import 'package:navigation_riverpod_example/map/routing/pages/map_first_page.dart';

import 'map_route_path.dart';

class MapRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  final WidgetRef ref;

  MapRouteInformationParser(this.ref);

  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    print("map parse route information");
    return MapRoute();
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    print("map restoreRouteInformation");
    if (path is MapRoute) {
      return RouteInformation(location: '/map');
    } else if (path is MapFirstPage) {
      return RouteInformation(location: '/map/first');
    } else {
      return RouteInformation(location: '/map/first/second');
    }
  }
}
