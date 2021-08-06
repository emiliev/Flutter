//* Logic / StateNotifier
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/meal.dart';
import 'package:domain_models/models/meal_type.dart';
import 'package:home/meals_feature/meals_repository.dart';
import 'package:home/meals_feature/meals_state_notifier.dart';
import 'package:home/state/generic_state.dart';

final mealsNotifierProvider =
    StateNotifierProvider<MealViewModel, GenericState<List<Meal>>>(
  (ref) => MealViewModel(ref),
);

final mealRepositoryProvider = Provider((ref) => FakeMealRepository());

final filterProvider = StateNotifierProvider<MealFilterViewModel, EMealType>(
    (ref) => MealFilterViewModel());

final filteredMealProvider = FutureProvider<List<Meal>>((ref) async {
  final filter = ref.watch(filterProvider);
  final mealsProvider = ref.read(mealRepositoryProvider);
  final meals = await mealsProvider.fetchMeals();
  switch (filter) {
    case EMealType.topList:
      return meals.where((meal) => meal.type == EMealType.topList).toList();
    case EMealType.continental:
      return meals.where((meal) => meal.type == EMealType.continental).toList();
    case EMealType.favourite:
      return meals.where((meal) => meal.type == EMealType.favourite).toList();
  }
});
