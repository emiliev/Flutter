import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/category.dart';
import 'package:home/repository/category_provider.dart';

class CategoriesList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(categoryNotifierProvider);
    return state.when(
      initial: () => Center(child: CircularProgressIndicator()),
      loading: () => Center(child: CircularProgressIndicator()),
      data: (categories) {
        final ThemeData theme = Theme.of(context);
        return createCategories(theme, categories);
      },
      error: (error) => Text('Error Occured!'),
    );
  }

  Container createCategories(ThemeData theme, List<Category> categories) {
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme colorScheme = theme.colorScheme;

    return Container(
      height: 140,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: textTheme.headline6,
                ),
                Spacer(),
                Text("See More"),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < categories.length; i++)
                  Container(
                    width: 50,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            categories[i].icon,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          categories[i].name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
