import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rw_flutter_implicit_animations/models/category.dart';
import 'package:rw_flutter_implicit_animations/screens/home/repository/category_repository.dart';
import 'package:rw_flutter_implicit_animations/screens/home/state/generic_state.dart';

class CategoryNotifier extends StateNotifier<GenericState<List<Category>>> {
  CategoryNotifier({
    required ICategoryRepository categoriesRepository,
  })  : _categoriesRepository = categoriesRepository,
        super(const GenericState.initial());

  final ICategoryRepository _categoriesRepository;

  Future<void> getCategories() async {
    state = const GenericState.loading();
    try {
      final categories = await _categoriesRepository.fetchCategories();
      state = GenericState.data(data: categories);
    } catch (_) {
      state = GenericState.error('Error!');
    }
  }
}
