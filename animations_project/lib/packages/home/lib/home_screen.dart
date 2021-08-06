import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/meal_type.dart';
import 'package:home/meals_feature/meals_provider.dart';
import 'package:home/category_feature/category_provider.dart';

import 'categories_list.dart';
import 'meals_switcher.dart';
import 'offers_slider.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // WTF, why ?!?!?!?!?
    Future.delayed(
      Duration(seconds: 2),
      () {
        watch(categoryNotifierProvider.notifier).getCategories();
        watch(filterProvider.notifier).setFilterType(EMealType.topList);
      },
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "RW-Eats",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Food Delivery",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_rounded,
                size: 32,
                color: Colors.grey[800],
              ),
              onPressed: () {}),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: [
          OffsersSlider(),
          CategoriesList(),
          MealsSwitcher(),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Drawer(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 64,
                      ),
                      child: Text(
                        'RW-Eats',
                        style: TextStyle(
                          color: colorScheme.secondary,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Divider(height: 1, thickness: 1),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Payment Methods'),
                      onTap: () {
                        Navigator.popAndPushNamed(
                          context,
                          '/payment_methods',
                        );
                      },
                    ),
                    Spacer(),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                      onTap: () {
                        Navigator.popAndPushNamed(
                          context,
                          '/auth',
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
