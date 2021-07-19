import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/category.dart';
import 'package:home/repository/category_repository.dart';
import 'package:home/repository/category_state_notifier.dart';
import 'package:home/state/generic_state.dart';

///Dependency Injection

//* Logic / StateNotifier
final categoryNotifierProvider =
    StateNotifierProvider<CategoryNotifier, GenericState<List<Category>>>(
  (ref) => CategoryNotifier(
    categoriesRepository: ref.watch(_categoryRepositoryProvider),
  ),
);

//* Repository
final _categoryRepositoryProvider = Provider<ICategoryRepository>(
  (ref) => FakeCategoryRepository(),
);
