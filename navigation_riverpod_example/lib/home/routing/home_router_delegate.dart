import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/routing/home_route_path.dart';
import 'package:navigation_riverpod_example/home/routing/pages/details_page.dart';
import 'package:navigation_riverpod_example/home/routing/pages/home_page.dart';
import 'package:navigation_riverpod_example/home/routing/pages/purple_page.dart';
import 'package:navigation_riverpod_example/home/state/home_state.dart';

class HomeRouterDelegate extends RouterDelegate<AppRoutePath>
    with PopNavigatorRouterDelegateMixin<AppRoutePath>, ChangeNotifier {
  final WidgetRef ref;
  @override
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  HomeRouterDelegate(this.ref, {required GlobalKey<NavigatorState> key})
      : navigatorKey = key {
    ref.listen(homeStateProvider, (_) => notifyListeners());
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath route) async {
    final configuration = ref.read(homeStateProvider.notifier);

    if (route is BookDetailRoute) {
      configuration.setSelectedBookId(route.bookId);
    } else {
      configuration.selectBook(null);
    }
  }

  @override
  AppRoutePath? get currentConfiguration {
    final configuration = ref.read(homeStateProvider);
    final bookId = configuration.id;
    if (bookId != null) {
      return BookDetailRoute(bookId);
    } else {
      return HomeRoute();
    }
  }

  @override
  Widget build(BuildContext context) {
    print('home build');
    final configuration = ref.read(homeStateProvider);
    return Navigator(
      key: navigatorKey,
      pages: [
        HomePage(key: ValueKey('home')),
        if (configuration.id != null)
          DetailsPage(
            configuration.id!,
            key: ValueKey('detailsKey'),
          ),
        if (configuration.purpleTap) PurplePage(key: ValueKey('purpleKey'))
      ],
      onPopPage: (Route<dynamic> route, dynamic result) {
        if (!route.didPop(result)) {
          return false;
        }

        if (route.settings is DetailsPage) {
          // if (currentConfiguration is BookDetailRoute) {
          ref.read(homeStateProvider.notifier).selectBook(null);
        }

        if (route.settings is PurplePage) {
          ref.read(homeStateProvider.notifier).setPurpleFlag(false);
        }
        return true;
      },
    );
  }
}
