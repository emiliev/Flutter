import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/routing/home_route_path.dart';
import 'package:navigation_riverpod_example/map/routing/map_route_path.dart';
import 'package:navigation_riverpod_example/map/routing/pages/map_first_page.dart';
import 'package:navigation_riverpod_example/map/routing/pages/map_page.dart';
import 'package:navigation_riverpod_example/map/routing/pages/map_second_page.dart';
import 'package:navigation_riverpod_example/map/state/map_state.dart';

class MapRouterDelegate extends RouterDelegate<AppRoutePath>
    with PopNavigatorRouterDelegateMixin<AppRoutePath>, ChangeNotifier {
  final WidgetRef ref;
  @override
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  MapRouterDelegate(this.ref, {required GlobalKey<NavigatorState> key})
      : navigatorKey = key {
    ref.listen(mapConfigurationStateProvider, (_) => notifyListeners());
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath route) async {
    final configuration = ref.read(mapConfigurationStateProvider.notifier);

    if (route is MapFirstScreenRoute) {
      configuration.setFirstScreen(true);
    } else if (route is MapSecondScreenRoute) {
      configuration.setSecondScreen(true);
    }
  }

  @override
  AppRoutePath? get currentConfiguration {
    return MapRoute();
  }

  @override
  Widget build(BuildContext context) {
    print('map router build');
    final configuration = ref.read(mapConfigurationStateProvider);
    return Navigator(
      key: navigatorKey,
      pages: [
        MapPage(ref, key: ValueKey('map')),
        if (configuration.firstScreen)
          MapFirstPage(ref, key: ValueKey('detailsKey')),
        if (configuration.secondScreen)
          MapSecondPage(ref, key: ValueKey('purpleKey'))
      ],
      onPopPage: (Route<dynamic> route, dynamic result) {
        if (!route.didPop(result)) {
          return false;
        }

        if (route.settings is MapFirstPage) {
          ref
              .read(mapConfigurationStateProvider.notifier)
              .setFirstScreen(false);
        }

        if (route.settings is MapSecondPage) {
          ref
              .read(mapConfigurationStateProvider.notifier)
              .setSecondScreen(false);
        }
        return true;
      },
    );
  }
}
