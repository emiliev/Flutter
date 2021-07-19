import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/meal.dart';
import 'package:home/meals_feature/meals_provider.dart';
import 'package:widgets/widgets/meal_card.dart';
import 'package:domain_models/models/meal_type.dart';

class MealsSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          MealType(),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 450),
            child: MealsList(),
          )
        ],
      ),
    );
  }
}

class MealsList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AsyncValue<List<Meal>> state = watch(filteredMealProvider);
    return state.when(
        loading: () => Center(child: CircularProgressIndicator()),
        data: (meals) => buildMealList(meals),
        error: (err, stack) => Text("$err"));
  }

  Container buildMealList(meals) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          for (var i = 0; i < meals.length; i++) MealCard(meal: meals[i])
        ],
      ),
    );
  }
}

class MealType extends ConsumerWidget {
  final GlobalKey _itemKey1 = GlobalKey();
  final GlobalKey _itemKey2 = GlobalKey();
  final GlobalKey _itemKey3 = GlobalKey();

  final double _selectorPositionX = 24;
  final double _selectorWidth = 30;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme colorScheme = theme.colorScheme;
    final filter = watch(filterProvider);

    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 450),
          curve: Curves.fastOutSlowIn,
          left: _selectorPositionX,
          bottom: 4,
          child: Container(
            height: 4,
            width: _selectorWidth,
            decoration: ShapeDecoration(
              shape: StadiumBorder(),
              color: colorScheme.secondary,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, bottom: 12.0),
          child: Row(
            children: [
              InkWell(
                key: _itemKey1,
                onTap: () {
                  _selectFilter(EMealType.topList, watch);
                },
                child: Text(
                  "Top Meals",
                  style: textTheme.headline6!.copyWith(
                    color: EMealType.topList == filter
                        ? colorScheme.secondary
                        : Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                key: _itemKey2,
                onTap: () {
                  _selectFilter(EMealType.continental, watch);
                },
                child: Text(
                  "Continental",
                  style: textTheme.headline6!.copyWith(
                    color: EMealType.continental == filter
                        ? colorScheme.secondary
                        : Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                key: _itemKey3,
                onTap: () {
                  _selectFilter(EMealType.favourite, watch);
                },
                child: Text(
                  "Your Favourite",
                  style: textTheme.headline6!.copyWith(
                    color: EMealType.favourite == filter
                        ? colorScheme.secondary
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _selectFilter(EMealType filter, ScopedReader watch) {
    watch(filterProvider.notifier).setFilterType(filter);
  }

  void _setWidgetPositionX(EMealType filter, BuildContext context) {
    //   late GlobalKey selectedGlobalKey;
    //   switch (filter) {
    //     case EMealType.topList:
    //       selectedGlobalKey = _itemKey1;
    //       break;
    //     case EMealType.favourite:
    //       selectedGlobalKey = _itemKey2;
    //       break;
    //     case EMealType.continental:
    //       selectedGlobalKey = _itemKey3;
    //       break;
    //   }}
    //   final RenderBox widgetRenderBox =
    //       context.findRenderObject() as RenderBox;
    //   final widgetPosition = widgetRenderBox.localToGlobal(Offset.zero);
    //   final widgetSize = widgetRenderBox.size;
    //   widgetPosition.dx - ((_selectorWidth - widgetSize.width) / 2);
  }
}
