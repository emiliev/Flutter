import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/routing/home_route_information_parser.dart';
import 'package:navigation_riverpod_example/home/routing/home_router_delegate.dart';
import 'package:navigation_riverpod_example/map/routing/map_route_information_parser.dart';
import 'package:navigation_riverpod_example/map/routing/map_router_delegate.dart';
import 'package:navigation_riverpod_example/tabbar/tide_tab_bar_view_model.dart';
import 'package:navigation_riverpod_example/top_bar.dart';

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();

class TideTabBar extends ConsumerWidget {
  final AppRouteInformationParser homeParser;
  final HomeRouterDelegate homeDelegate;
  final MapRouteInformationParser mapParser;
  final MapRouterDelegate mapDelegate;

  TideTabBar(WidgetRef _ref)
      : homeDelegate =
            HomeRouterDelegate(_ref, key: GlobalKey<NavigatorState>()),
        homeParser = AppRouteInformationParser(_ref),
        mapDelegate = MapRouterDelegate(_ref, key: GlobalKey<NavigatorState>()),
        mapParser = MapRouteInformationParser(_ref);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBar = ref.read(tabBarStateProvider.notifier);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: tabBar.items,
        onTap: (index) {
          print("selected $index");
        },
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return MaterialApp.router(
            routeInformationParser: homeParser,
            routerDelegate: homeDelegate,
          );
        } else if (index == 1) {
          return MaterialApp.router(
            routeInformationParser: mapParser,
            routerDelegate: mapDelegate,
          );
        } else {
          return CupertinoTabView(
            navigatorKey: thirdTabNavKey,
            builder: (BuildContext context) => PurpleView(),
          );
        }
      },
      controller: tabBar.controller,
    );
  }
}

class PurpleView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyFirstTab();
  }
}

class MyFirstTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyTopBar(
      text: "Purple screen",
      uniqueHeroTag: 'purpleScreen',
      child: Container(
        color: Colors.purple,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              ref.read(tabBarStateProvider.notifier).selectTab(1);
            },
            child: Text('Navigate to map tab second page',
                style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
