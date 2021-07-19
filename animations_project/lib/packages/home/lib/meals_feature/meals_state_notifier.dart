import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/meal.dart';
import 'package:domain_models/models/meal_type.dart';
import 'package:home/meals_feature/meals_repository.dart';
import 'package:home/state/generic_state.dart';

class MealNotifier extends StateNotifier<GenericState<List<Meal>>> {
  MealNotifier({
    required IMealsRepository mealRepository,
  })  : _mealRepository = mealRepository,
        super(const GenericState.initial());

  final IMealsRepository _mealRepository;

  Future<void> getMeals() async {
    state = const GenericState.loading();
    try {
      final categories = await _mealRepository.fetchMeals();
      state = GenericState.data(data: categories);
    } catch (_) {
      state = GenericState.error('Error!');
    }
  }
}

class MealFilterNotifier extends StateNotifier<EMealType> {
  MealFilterNotifier() : super(EMealType.topList);

  setFilterType(EMealType type) {
    state = type;
  }
}
