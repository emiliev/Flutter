import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/meal.dart';
import 'package:domain_models/models/meal_type.dart';
import 'package:home/meals_feature/meals_provider.dart';
import 'package:home/state/generic_state.dart';

class MealViewModel extends StateNotifier<GenericState<List<Meal>>> {
  final ProviderReference _ref;
  MealViewModel(this._ref) : super(const GenericState.initial());

  Future<void> getMeals() async {
    final repository = _ref.read(mealRepositoryProvider);
    state = const GenericState.loading();
    try {
      final categories = await repository.fetchMeals();
      state = GenericState.data(data: categories);
    } catch (_) {
      state = GenericState.error('Error!');
    }
  }
}

class MealFilterViewModel extends StateNotifier<EMealType> {
  MealFilterViewModel() : super(EMealType.topList);

  setFilterType(EMealType type) {
    if (type == state) {
      return;
    }
    state = type;
  }
}
