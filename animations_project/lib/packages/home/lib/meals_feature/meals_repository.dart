import 'package:domain_models/models/meal.dart';

abstract class IMealsRepository {
  Future<List<Meal>> fetchTopMeals();
  Future<List<Meal>> fetchContinentalMeals();
  Future<List<Meal>> fetchFavouriteMeals();
  Future<List<Meal>> fetchMeals();
}

class FakeMealRepository implements IMealsRepository {
  @override
  // final Reader _read;

  // FakeMealRepository(this._read);

  Future<List<Meal>> fetchTopMeals() {
    return Future.delayed(Duration(seconds: 1)).then((value) => topMeals);
  }

  Future<List<Meal>> fetchContinentalMeals() {
    return Future.delayed(Duration(seconds: 1))
        .then((value) => continentalMeals);
  }

  Future<List<Meal>> fetchFavouriteMeals() {
    return Future.delayed(Duration(seconds: 1)).then((value) => favouriteMeals);
  }

  Future<List<Meal>> fetchMeals() async {
    return await Future.delayed(Duration(seconds: 1))
        .then((value) => [...topMeals, ...favouriteMeals, ...continentalMeals]);
  }
}
